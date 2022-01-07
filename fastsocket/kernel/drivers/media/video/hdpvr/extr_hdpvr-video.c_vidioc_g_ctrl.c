
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


 int EINVAL ;






__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *private_data,
    struct v4l2_control *ctrl)
{
 struct hdpvr_fh *fh = file->private_data;
 struct hdpvr_device *dev = fh->dev;

 switch (ctrl->id) {
 case 132:
  ctrl->value = dev->options.brightness;
  break;
 case 131:
  ctrl->value = dev->options.contrast;
  break;
 case 129:
  ctrl->value = dev->options.saturation;
  break;
 case 130:
  ctrl->value = dev->options.hue;
  break;
 case 128:
  ctrl->value = dev->options.sharpness;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
