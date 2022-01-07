
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; } ;
struct vcontrol {struct v4l2_queryctrl qc; } ;
struct v4l2_int_device {int dummy; } ;


 int EINVAL ;
 struct vcontrol* find_vctrl (int ) ;

__attribute__((used)) static int ioctl_queryctrl(struct v4l2_int_device *s,
    struct v4l2_queryctrl *qc)
{
 struct vcontrol *control;

 control = find_vctrl(qc->id);

 if (control == ((void*)0))
  return -EINVAL;

 *qc = control->qc;

 return 0;
}
