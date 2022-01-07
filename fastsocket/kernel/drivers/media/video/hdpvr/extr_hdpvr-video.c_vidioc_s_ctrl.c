
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_control {int id; int value; } ;
struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct TYPE_2__ {int sharpness; int hue; int saturation; int contrast; int brightness; } ;
struct hdpvr_device {TYPE_1__ options; } ;
struct file {struct hdpvr_fh* private_data; } ;


 int CTRL_BRIGHTNESS ;
 int CTRL_CONTRAST ;
 int CTRL_HUE ;
 int CTRL_SATURATION ;
 int CTRL_SHARPNESS ;
 int EINVAL ;





 int hdpvr_config_call (struct hdpvr_device*,int ,int ) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *private_data,
    struct v4l2_control *ctrl)
{
 struct hdpvr_fh *fh = file->private_data;
 struct hdpvr_device *dev = fh->dev;
 int retval;

 switch (ctrl->id) {
 case 132:
  retval = hdpvr_config_call(dev, CTRL_BRIGHTNESS, ctrl->value);
  if (!retval)
   dev->options.brightness = ctrl->value;
  break;
 case 131:
  retval = hdpvr_config_call(dev, CTRL_CONTRAST, ctrl->value);
  if (!retval)
   dev->options.contrast = ctrl->value;
  break;
 case 129:
  retval = hdpvr_config_call(dev, CTRL_SATURATION, ctrl->value);
  if (!retval)
   dev->options.saturation = ctrl->value;
  break;
 case 130:
  retval = hdpvr_config_call(dev, CTRL_HUE, ctrl->value);
  if (!retval)
   dev->options.hue = ctrl->value;
  break;
 case 128:
  retval = hdpvr_config_call(dev, CTRL_SHARPNESS, ctrl->value);
  if (!retval)
   dev->options.sharpness = ctrl->value;
  break;
 default:
  return -EINVAL;
 }

 return retval;
}
