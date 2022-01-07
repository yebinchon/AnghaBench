
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct em28xx {int volume; int mute; } ;





__attribute__((used)) static int ac97_get_ctrl(struct em28xx *dev, struct v4l2_control *ctrl)
{
 switch (ctrl->id) {
 case 129:
  ctrl->value = dev->mute;
  return 0;
 case 128:
  ctrl->value = dev->volume;
  return 0;
 default:

  return 1;
 }
}
