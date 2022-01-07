
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct tda7432 {int muted; int volume; int rr; int rf; int lr; int lf; int bass; int treble; } ;


 int EINVAL ;
 void* TDA7432_ATTEN_0DB ;
 int TDA7432_LD_ON ;
 int TDA7432_LF ;
 int TDA7432_LR ;
 int TDA7432_MUTE ;
 int TDA7432_RF ;
 int TDA7432_RR ;
 int TDA7432_TN ;
 int TDA7432_VL ;





 int loudness ;
 int maxvol ;
 int tda7432_write (struct v4l2_subdev*,int ,int) ;
 struct tda7432* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tda7432_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct tda7432 *t = to_state(sd);

 switch (ctrl->id) {
 case 130:
  t->muted=ctrl->value;
  break;
 case 128:
  if(!maxvol){
   t->volume = 0x6f - ((ctrl->value)/630);
  } else {
   t->volume = 0x6f - ((ctrl->value)/829);
  }
  if (loudness)
   t->volume |= TDA7432_LD_ON;

  tda7432_write(sd, TDA7432_VL, t->volume);
  return 0;
 case 132:
  if (ctrl->value < 32768) {

   t->rr = (32768 - ctrl->value)/1057;
   t->rf = t->rr;
   t->lr = TDA7432_ATTEN_0DB;
   t->lf = TDA7432_ATTEN_0DB;
  } else if(ctrl->value > 32769) {

   t->lf = (ctrl->value - 32768)/1057;
   t->lr = t->lf;
   t->rr = TDA7432_ATTEN_0DB;
   t->rf = TDA7432_ATTEN_0DB;
  } else {

   t->rr = TDA7432_ATTEN_0DB;
   t->rf = TDA7432_ATTEN_0DB;
   t->lf = TDA7432_ATTEN_0DB;
   t->lr = TDA7432_ATTEN_0DB;
  }
  break;
 case 131:
  t->bass = ctrl->value >> 12;
  if(t->bass>= 0x8)
    t->bass = (~t->bass & 0xf) + 0x8 ;

  tda7432_write(sd, TDA7432_TN, 0x10 | (t->bass << 4) | t->treble);
  return 0;
 case 129:
  t->treble= ctrl->value >> 12;
  if(t->treble>= 0x8)
    t->treble = (~t->treble & 0xf) + 0x8 ;

  tda7432_write(sd, TDA7432_TN, 0x10 | (t->bass << 4) | t->treble);
  return 0;
 default:
  return -EINVAL;
 }


 if (t->muted)
 {

  tda7432_write(sd, TDA7432_LF, t->lf | TDA7432_MUTE);
  tda7432_write(sd, TDA7432_LR, t->lr | TDA7432_MUTE);
  tda7432_write(sd, TDA7432_RF, t->rf | TDA7432_MUTE);
  tda7432_write(sd, TDA7432_RR, t->rr | TDA7432_MUTE);
 } else {
  tda7432_write(sd, TDA7432_LF, t->lf);
  tda7432_write(sd, TDA7432_LR, t->lr);
  tda7432_write(sd, TDA7432_RF, t->rf);
  tda7432_write(sd, TDA7432_RR, t->rr);
 }
 return 0;
}
