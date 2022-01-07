
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_ext_controls {scalar_t__ ctrl_class; int count; int error_idx; TYPE_1__* controls; } ;
struct si4713_device {int dummy; } ;
struct TYPE_4__ {int id; } ;


 int EINVAL ;




 scalar_t__ V4L2_CTRL_CLASS_FM_TX ;
 int si4713_write_econtrol_integers (struct si4713_device*,TYPE_1__*) ;
 int si4713_write_econtrol_string (struct si4713_device*,TYPE_1__*) ;
 int si4713_write_econtrol_tune (struct si4713_device*,TYPE_1__*) ;
 struct si4713_device* to_si4713_device (struct v4l2_subdev*) ;

__attribute__((used)) static int si4713_s_ext_ctrls(struct v4l2_subdev *sd,
    struct v4l2_ext_controls *ctrls)
{
 struct si4713_device *sdev = to_si4713_device(sd);
 int i;

 if (ctrls->ctrl_class != V4L2_CTRL_CLASS_FM_TX)
  return -EINVAL;

 for (i = 0; i < ctrls->count; i++) {
  int err;

  switch ((ctrls->controls + i)->id) {
  case 131:
  case 130:
   err = si4713_write_econtrol_string(sdev,
       ctrls->controls + i);
   break;
  case 129:
  case 128:
   err = si4713_write_econtrol_tune(sdev,
       ctrls->controls + i);
   break;
  default:
   err = si4713_write_econtrol_integers(sdev,
       ctrls->controls + i);
  }

  if (err < 0) {
   ctrls->error_idx = i;
   return err;
  }
 }

 return 0;
}
