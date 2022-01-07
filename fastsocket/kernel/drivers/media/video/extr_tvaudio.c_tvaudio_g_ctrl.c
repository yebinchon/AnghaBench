
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct CHIPSTATE {int muted; int bass; int treble; int right; int left; struct CHIPDESC* desc; } ;
struct CHIPDESC {int flags; } ;


 int CHIP_HAS_BASSTREBLE ;
 int CHIP_HAS_INPUTSEL ;
 int CHIP_HAS_VOLUME ;
 int EINVAL ;





 void* max (int ,int ) ;
 int min (int ,int ) ;
 struct CHIPSTATE* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tvaudio_g_ctrl(struct v4l2_subdev *sd,
       struct v4l2_control *ctrl)
{
 struct CHIPSTATE *chip = to_state(sd);
 struct CHIPDESC *desc = chip->desc;

 switch (ctrl->id) {
 case 130:
  if (!(desc->flags & CHIP_HAS_INPUTSEL))
   break;
  ctrl->value=chip->muted;
  return 0;
 case 128:
  if (!(desc->flags & CHIP_HAS_VOLUME))
   break;
  ctrl->value = max(chip->left,chip->right);
  return 0;
 case 132:
 {
  int volume;
  if (!(desc->flags & CHIP_HAS_VOLUME))
   break;
  volume = max(chip->left,chip->right);
  if (volume)
   ctrl->value=(32768*min(chip->left,chip->right))/volume;
  else
   ctrl->value=32768;
  return 0;
 }
 case 131:
  if (!(desc->flags & CHIP_HAS_BASSTREBLE))
   break;
  ctrl->value = chip->bass;
  return 0;
 case 129:
  if (!(desc->flags & CHIP_HAS_BASSTREBLE))
   break;
  ctrl->value = chip->treble;
  return 0;
 }
 return -EINVAL;
}
