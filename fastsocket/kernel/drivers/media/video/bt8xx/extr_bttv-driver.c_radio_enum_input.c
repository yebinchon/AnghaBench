
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {scalar_t__ index; int type; int name; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_TUNER ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int radio_enum_input(struct file *file, void *priv,
    struct v4l2_input *i)
{
 if (i->index != 0)
  return -EINVAL;

 strcpy(i->name, "Radio");
 i->type = V4L2_INPUT_TYPE_TUNER;

 return 0;
}
