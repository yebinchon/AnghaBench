
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct zr364xx_camera {TYPE_1__ mode; } ;
struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENODEV ;

 struct zr364xx_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int zr364xx_vidioc_g_ctrl(struct file *file, void *priv,
     struct v4l2_control *c)
{
 struct zr364xx_camera *cam;

 if (file == ((void*)0))
  return -ENODEV;
 cam = video_drvdata(file);

 switch (c->id) {
 case 128:
  c->value = cam->mode.brightness;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
