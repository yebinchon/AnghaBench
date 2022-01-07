
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct zr364xx_camera {int lock; int udev; TYPE_1__ mode; } ;
struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENODEV ;

 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_control_msg (int ,int,int,int ,int *,int ) ;
 struct zr364xx_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int zr364xx_vidioc_s_ctrl(struct file *file, void *priv,
     struct v4l2_control *c)
{
 struct zr364xx_camera *cam;
 int temp;

 if (file == ((void*)0))
  return -ENODEV;
 cam = video_drvdata(file);

 switch (c->id) {
 case 128:
  cam->mode.brightness = c->value;

  mutex_lock(&cam->lock);
  send_control_msg(cam->udev, 1, 0x2001, 0, ((void*)0), 0);
  temp = (0x60 << 8) + 127 - cam->mode.brightness;
  send_control_msg(cam->udev, 1, temp, 0, ((void*)0), 0);
  mutex_unlock(&cam->lock);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
