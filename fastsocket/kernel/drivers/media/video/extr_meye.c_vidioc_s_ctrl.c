
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int agc; int sharpness; int picture; int quality; int framerate; } ;
struct TYPE_4__ {int brightness; int hue; int contrast; int colour; } ;
struct TYPE_6__ {int lock; TYPE_2__ params; TYPE_1__ picture; } ;


 int EINVAL ;
 int SONY_PIC_COMMAND_SETCAMERAAGC ;
 int SONY_PIC_COMMAND_SETCAMERABRIGHTNESS ;
 int SONY_PIC_COMMAND_SETCAMERACOLOR ;
 int SONY_PIC_COMMAND_SETCAMERACONTRAST ;
 int SONY_PIC_COMMAND_SETCAMERAHUE ;
 int SONY_PIC_COMMAND_SETCAMERAPICTURE ;
 int SONY_PIC_COMMAND_SETCAMERASHARPNESS ;
 TYPE_3__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sony_pic_camera_command (int ,int) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *fh, struct v4l2_control *c)
{
 mutex_lock(&meye.lock);
 switch (c->id) {
 case 136:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERABRIGHTNESS, c->value);
  meye.picture.brightness = c->value << 10;
  break;
 case 133:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERAHUE, c->value);
  meye.picture.hue = c->value << 10;
  break;
 case 135:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERACONTRAST, c->value);
  meye.picture.contrast = c->value << 10;
  break;
 case 129:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERACOLOR, c->value);
  meye.picture.colour = c->value << 10;
  break;
 case 137:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERAAGC, c->value);
  meye.params.agc = c->value;
  break;
 case 128:
 case 131:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERASHARPNESS, c->value);
  meye.params.sharpness = c->value;
  break;
 case 130:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERAPICTURE, c->value);
  meye.params.picture = c->value;
  break;
 case 132:
  meye.params.quality = c->value;
  break;
 case 134:
  meye.params.framerate = c->value;
  break;
 default:
  mutex_unlock(&meye.lock);
  return -EINVAL;
 }
 mutex_unlock(&meye.lock);

 return 0;
}
