
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; } ;
struct poseidon_control {struct v4l2_queryctrl v4l2_ctrl; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct poseidon_control* check_control_id (int ) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *fh,
   struct v4l2_queryctrl *a)
{
 struct poseidon_control *control = ((void*)0);

 control = check_control_id(a->id);
 if (!control)
  return -EINVAL;

 *a = control->v4l2_ctrl;
 return 0;
}
