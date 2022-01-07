
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_querymenu {scalar_t__ id; int index; int name; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_CID_PRIVATE_COLORFILTER ;
 int strlcpy (int ,char const*,int) ;
 int v4l2_ctrl_query_menu (struct v4l2_querymenu*,int *,int *) ;

__attribute__((used)) static int vidioc_querymenu(struct file *file, void *priv,
       struct v4l2_querymenu *qmenu)
{
 static const char *colorfilter[] = {
  "Off",
  "On",
  ((void*)0)
 };
 if (qmenu->id == V4L2_CID_PRIVATE_COLORFILTER) {
  int i;
  const char **menu_items = colorfilter;
  for (i = 0; i < qmenu->index && menu_items[i]; i++)
   ;
  if (menu_items[i] == ((void*)0) || menu_items[i][0] == '\0')
   return -EINVAL;
  strlcpy(qmenu->name, menu_items[qmenu->index],
   sizeof(qmenu->name));
  return 0;
 }
 return v4l2_ctrl_query_menu(qmenu, ((void*)0), ((void*)0));
}
