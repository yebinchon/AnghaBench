
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_control {int id; int value; } ;
struct TYPE_2__ {int brightness; int hflip; int vflip; } ;
struct stk_camera {TYPE_1__ vsettings; } ;
struct file {int dummy; } ;


 int EINVAL ;



 int stk_sensor_set_brightness (struct stk_camera*,int) ;

__attribute__((used)) static int stk_vidioc_s_ctrl(struct file *filp,
  void *priv, struct v4l2_control *c)
{
 struct stk_camera *dev = priv;
 switch (c->id) {
 case 130:
  dev->vsettings.brightness = c->value;
  return stk_sensor_set_brightness(dev, c->value >> 8);
 case 129:
  dev->vsettings.hflip = c->value;
  return 0;
 case 128:
  dev->vsettings.vflip = c->value;
  return 0;
 default:
  return -EINVAL;
 }
 return 0;
}
