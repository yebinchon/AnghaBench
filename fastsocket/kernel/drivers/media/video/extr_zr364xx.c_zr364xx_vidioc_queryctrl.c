
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct zr364xx_camera {TYPE_1__ mode; } ;
struct v4l2_queryctrl {int id; int maximum; int step; int flags; int default_value; int minimum; int name; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENODEV ;

 int V4L2_CTRL_TYPE_INTEGER ;
 int strcpy (int ,char*) ;
 struct zr364xx_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int zr364xx_vidioc_queryctrl(struct file *file, void *priv,
        struct v4l2_queryctrl *c)
{
 struct zr364xx_camera *cam;

 if (file == ((void*)0))
  return -ENODEV;
 cam = video_drvdata(file);

 switch (c->id) {
 case 128:
  c->type = V4L2_CTRL_TYPE_INTEGER;
  strcpy(c->name, "Brightness");
  c->minimum = 0;
  c->maximum = 127;
  c->step = 1;
  c->default_value = cam->mode.brightness;
  c->flags = 0;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
