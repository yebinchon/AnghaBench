
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {scalar_t__ index; int name; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int empress_enum_input(struct file *file, void *priv,
     struct v4l2_input *i)
{
 if (i->index != 0)
  return -EINVAL;

 i->type = V4L2_INPUT_TYPE_CAMERA;
 strcpy(i->name, "CCIR656");

 return 0;
}
