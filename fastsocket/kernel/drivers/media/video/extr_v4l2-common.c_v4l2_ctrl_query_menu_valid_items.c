
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_querymenu {size_t index; int name; scalar_t__ reserved; int id; } ;


 int EINVAL ;
 scalar_t__ const V4L2_CTRL_MENU_IDS_END ;
 int strlcpy (int ,char const* const,int) ;
 char** v4l2_ctrl_get_menu (int ) ;

int v4l2_ctrl_query_menu_valid_items(struct v4l2_querymenu *qmenu, const u32 *ids)
{
 const char * const *menu_items = v4l2_ctrl_get_menu(qmenu->id);

 qmenu->reserved = 0;
 if (menu_items == ((void*)0) || ids == ((void*)0))
  return -EINVAL;
 while (*ids != V4L2_CTRL_MENU_IDS_END) {
  if (*ids++ == qmenu->index) {
   strlcpy(qmenu->name, menu_items[qmenu->index],
     sizeof(qmenu->name));
   return 0;
  }
 }
 return -EINVAL;
}
