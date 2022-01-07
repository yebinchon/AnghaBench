
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_control {int id; int value; } ;
struct TYPE_2__ {int vflip; int hflip; int brightness; } ;
struct stk_camera {TYPE_1__ vsettings; } ;
struct file {int dummy; } ;


 int EINVAL ;




__attribute__((used)) static int stk_vidioc_g_ctrl(struct file *filp,
  void *priv, struct v4l2_control *c)
{
 struct stk_camera *dev = priv;
 switch (c->id) {
 case 130:
  c->value = dev->vsettings.brightness;
  break;
 case 129:
  c->value = dev->vsettings.hflip;
  break;
 case 128:
  c->value = dev->vsettings.vflip;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
