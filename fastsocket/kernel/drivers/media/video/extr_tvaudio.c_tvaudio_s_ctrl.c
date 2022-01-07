
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct CHIPSTATE {int muted; size_t input; int left; int right; int bass; int treble; struct CHIPDESC* desc; } ;
struct CHIPDESC {int flags; int (* treblefunc ) (int) ;int treblereg; int (* bassfunc ) (int) ;int bassreg; int (* volfunc ) (int) ;int rightreg; int leftreg; int inputmask; int * inputmap; int inputreg; int inputmute; } ;
typedef int __u16 ;


 int CHIP_HAS_BASSTREBLE ;
 int CHIP_HAS_INPUTSEL ;
 int CHIP_HAS_VOLUME ;
 int EINVAL ;
 int ERANGE ;





 int chip_write (struct CHIPSTATE*,int ,int ) ;
 int chip_write_masked (struct CHIPSTATE*,int ,int ,int ) ;
 int max (int,int) ;
 int min (int,int) ;
 int stub1 (int) ;
 int stub2 (int) ;
 int stub3 (int) ;
 int stub4 (int) ;
 int stub5 (int) ;
 int stub6 (int) ;
 struct CHIPSTATE* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tvaudio_s_ctrl(struct v4l2_subdev *sd,
       struct v4l2_control *ctrl)
{
 struct CHIPSTATE *chip = to_state(sd);
 struct CHIPDESC *desc = chip->desc;

 switch (ctrl->id) {
 case 130:
  if (!(desc->flags & CHIP_HAS_INPUTSEL))
   break;

  if (ctrl->value < 0 || ctrl->value >= 2)
   return -ERANGE;
  chip->muted = ctrl->value;
  if (chip->muted)
   chip_write_masked(chip,desc->inputreg,desc->inputmute,desc->inputmask);
  else
   chip_write_masked(chip,desc->inputreg,
     desc->inputmap[chip->input],desc->inputmask);
  return 0;
 case 128:
 {
  int volume,balance;

  if (!(desc->flags & CHIP_HAS_VOLUME))
   break;

  volume = max(chip->left,chip->right);
  if (volume)
   balance=(32768*min(chip->left,chip->right))/volume;
  else
   balance=32768;

  volume=ctrl->value;
  chip->left = (min(65536 - balance,32768) * volume) / 32768;
  chip->right = (min(balance,volume *(__u16)32768)) / 32768;

  chip_write(chip,desc->leftreg,desc->volfunc(chip->left));
  chip_write(chip,desc->rightreg,desc->volfunc(chip->right));

  return 0;
 }
 case 132:
 {
  int volume, balance;
  if (!(desc->flags & CHIP_HAS_VOLUME))
   break;

  volume = max(chip->left,chip->right);
  balance = ctrl->value;

  chip_write(chip,desc->leftreg,desc->volfunc(chip->left));
  chip_write(chip,desc->rightreg,desc->volfunc(chip->right));

  return 0;
 }
 case 131:
  if (!(desc->flags & CHIP_HAS_BASSTREBLE))
   break;
  chip->bass = ctrl->value;
  chip_write(chip,desc->bassreg,desc->bassfunc(chip->bass));

  return 0;
 case 129:
  if (!(desc->flags & CHIP_HAS_BASSTREBLE))
   break;
  chip->treble = ctrl->value;
  chip_write(chip,desc->treblereg,desc->treblefunc(chip->treble));

  return 0;
 }
 return -EINVAL;
}
