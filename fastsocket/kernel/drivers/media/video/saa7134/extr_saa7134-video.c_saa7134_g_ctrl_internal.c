
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct saa7134_fh {int dummy; } ;
struct saa7134_dev {int ctl_automute; int ctl_y_odd; int ctl_y_even; int ctl_mirror; int ctl_invert; int ctl_volume; int ctl_mute; int ctl_saturation; int ctl_contrast; int ctl_hue; int ctl_bright; } ;


 int EINVAL ;
 struct v4l2_queryctrl* ctrl_by_id (int) ;

int saa7134_g_ctrl_internal(struct saa7134_dev *dev, struct saa7134_fh *fh, struct v4l2_control *c)
{
 const struct v4l2_queryctrl* ctrl;

 ctrl = ctrl_by_id(c->id);
 if (((void*)0) == ctrl)
  return -EINVAL;
 switch (c->id) {
 case 136:
  c->value = dev->ctl_bright;
  break;
 case 133:
  c->value = dev->ctl_hue;
  break;
 case 135:
  c->value = dev->ctl_contrast;
  break;
 case 128:
  c->value = dev->ctl_saturation;
  break;
 case 138:
  c->value = dev->ctl_mute;
  break;
 case 137:
  c->value = dev->ctl_volume;
  break;
 case 131:
  c->value = dev->ctl_invert;
  break;
 case 134:
  c->value = dev->ctl_mirror;
  break;
 case 130:
  c->value = dev->ctl_y_even;
  break;
 case 129:
  c->value = dev->ctl_y_odd;
  break;
 case 132:
  c->value = dev->ctl_automute;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
