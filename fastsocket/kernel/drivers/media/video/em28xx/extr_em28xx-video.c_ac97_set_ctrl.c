
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_control {scalar_t__ id; scalar_t__ value; } ;
struct em28xx {scalar_t__ mute; scalar_t__ volume; } ;
struct TYPE_3__ {scalar_t__ id; scalar_t__ minimum; scalar_t__ maximum; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ERANGE ;


 TYPE_1__* ac97_qctrl ;
 int em28xx_audio_analog_set (struct em28xx*) ;

__attribute__((used)) static int ac97_set_ctrl(struct em28xx *dev, const struct v4l2_control *ctrl)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ac97_qctrl); i++)
  if (ctrl->id == ac97_qctrl[i].id)
   goto handle;


 return 1;

handle:
 if (ctrl->value < ac97_qctrl[i].minimum ||
     ctrl->value > ac97_qctrl[i].maximum)
  return -ERANGE;

 switch (ctrl->id) {
 case 129:
  dev->mute = ctrl->value;
  break;
 case 128:
  dev->volume = ctrl->value;
  break;
 }

 return em28xx_audio_analog_set(dev);
}
