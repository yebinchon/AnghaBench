
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct tda9875 {int lvol; int rvol; int bass; int treble; } ;


 int EINVAL ;




 int max (int,int) ;
 int min (int,int) ;
 int tda9875_set (struct v4l2_subdev*) ;
 struct tda9875* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tda9875_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct tda9875 *t = to_state(sd);
 int chvol = 0, volume = 0, balance = 0, left, right;

 switch (ctrl->id) {
 case 128:
  left = (t->lvol+84)*606;
  right = (t->rvol+84)*606;

  volume = max(left,right);
  balance = (32768*min(left,right))/
         (volume ? volume : 1);
  balance =(left<right)?
   (65535-balance) : balance;

  volume = ctrl->value;

  chvol=1;
  break;
 case 131:
  left = (t->lvol+84)*606;
  right = (t->rvol+84)*606;

  volume=max(left,right);

  balance = ctrl->value;

  chvol=1;
  break;
 case 130:
  t->bass = ((ctrl->value/2400)-12) & 0xff;
  if (t->bass > 15)
   t->bass = 15;
  if (t->bass < -12)
   t->bass = -12 & 0xff;
  break;
 case 129:
  t->treble = ((ctrl->value/2700)-12) & 0xff;
  if (t->treble > 12)
   t->treble = 12;
  if (t->treble < -12)
   t->treble = -12 & 0xff;
  break;
 default:
  return -EINVAL;
 }

 if (chvol) {
  left = (min(65536 - balance,32768) *
   volume) / 32768;
  right = (min(balance,32768) *
    volume) / 32768;
  t->lvol = ((left/606)-84) & 0xff;
  if (t->lvol > 24)
   t->lvol = 24;
  if (t->lvol < -84)
   t->lvol = -84 & 0xff;

  t->rvol = ((right/606)-84) & 0xff;
  if (t->rvol > 24)
   t->rvol = 24;
  if (t->rvol < -84)
   t->rvol = -84 & 0xff;
 }

 tda9875_set(sd);
 return 0;
}
