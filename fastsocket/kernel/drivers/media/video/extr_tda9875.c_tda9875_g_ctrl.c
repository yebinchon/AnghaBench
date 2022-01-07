
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct tda9875 {int treble; int bass; int rvol; int lvol; } ;


 int EINVAL ;




 void* max (int,int) ;
 int min (int,int) ;
 struct tda9875* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tda9875_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct tda9875 *t = to_state(sd);

 switch (ctrl->id) {
 case 128:
 {
  int left = (t->lvol+84)*606;
  int right = (t->rvol+84)*606;

  ctrl->value=max(left,right);
  return 0;
 }
 case 131:
 {
  int left = (t->lvol+84)*606;
  int right = (t->rvol+84)*606;
  int volume = max(left,right);
  int balance = (32768*min(left,right))/
         (volume ? volume : 1);
  ctrl->value=(left<right)?
   (65535-balance) : balance;
  return 0;
 }
 case 130:
  ctrl->value = (t->bass+12)*2427;
  return 0;
 case 129:
  ctrl->value = (t->treble+12)*2730;
  return 0;
 }
 return -EINVAL;
}
