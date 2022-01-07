
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; int maximum; int step; int default_value; int flags; int minimum; int name; void* type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_CTRL_FLAG_DISABLED ;
 void* V4L2_CTRL_TYPE_INTEGER ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *fh,
    struct v4l2_queryctrl *c)
{
 switch (c->id) {

 case 136:
  c->type = V4L2_CTRL_TYPE_INTEGER;
  strcpy(c->name, "Brightness");
  c->minimum = 0;
  c->maximum = 63;
  c->step = 1;
  c->default_value = 32;
  c->flags = 0;
  break;
 case 133:
  c->type = V4L2_CTRL_TYPE_INTEGER;
  strcpy(c->name, "Hue");
  c->minimum = 0;
  c->maximum = 63;
  c->step = 1;
  c->default_value = 32;
  c->flags = 0;
  break;
 case 135:
  c->type = V4L2_CTRL_TYPE_INTEGER;
  strcpy(c->name, "Contrast");
  c->minimum = 0;
  c->maximum = 63;
  c->step = 1;
  c->default_value = 32;
  c->flags = 0;
  break;
 case 129:
  c->type = V4L2_CTRL_TYPE_INTEGER;
  strcpy(c->name, "Saturation");
  c->minimum = 0;
  c->maximum = 63;
  c->step = 1;
  c->default_value = 32;
  c->flags = 0;
  break;
 case 137:
  c->type = V4L2_CTRL_TYPE_INTEGER;
  strcpy(c->name, "Agc");
  c->minimum = 0;
  c->maximum = 63;
  c->step = 1;
  c->default_value = 48;
  c->flags = 0;
  break;
 case 131:
 case 128:
  c->type = V4L2_CTRL_TYPE_INTEGER;
  strcpy(c->name, "Sharpness");
  c->minimum = 0;
  c->maximum = 63;
  c->step = 1;
  c->default_value = 32;




  c->flags = (c->id == 128) ? 0 :
      V4L2_CTRL_FLAG_DISABLED;
  break;
 case 130:
  c->type = V4L2_CTRL_TYPE_INTEGER;
  strcpy(c->name, "Picture");
  c->minimum = 0;
  c->maximum = 63;
  c->step = 1;
  c->default_value = 0;
  c->flags = 0;
  break;
 case 132:
  c->type = V4L2_CTRL_TYPE_INTEGER;
  strcpy(c->name, "JPEG quality");
  c->minimum = 0;
  c->maximum = 10;
  c->step = 1;
  c->default_value = 8;
  c->flags = 0;
  break;
 case 134:
  c->type = V4L2_CTRL_TYPE_INTEGER;
  strcpy(c->name, "Framerate");
  c->minimum = 0;
  c->maximum = 31;
  c->step = 1;
  c->default_value = 0;
  c->flags = 0;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
