
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct tda7432 {int muted; int volume; int lf; int rf; int bass; int treble; } ;


 int EINVAL ;





 int maxvol ;
 struct tda7432* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tda7432_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct tda7432 *t = to_state(sd);

 switch (ctrl->id) {
 case 130:
  ctrl->value=t->muted;
  return 0;
 case 128:
  if (!maxvol){
   ctrl->value = ( 0x6f - (t->volume & 0x7F) ) * 630;
  } else {
   ctrl->value = ( 0x6f - (t->volume & 0x7F) ) * 829;
  }
  return 0;
 case 132:
 {
  if ( (t->lf) < (t->rf) )

   ctrl->value = (32768 - 1057*(t->rf));
  else

   ctrl->value = (32768 + 1057*(t->lf));
  return 0;
 }
 case 131:
 {

  int bass=t->bass;
  if(bass >= 0x8)
   bass = ~(bass - 0x8) & 0xf;
  ctrl->value = (bass << 12)+(bass << 8)+(bass << 4)+(bass);
  return 0;
 }
 case 129:
 {
  int treble=t->treble;
  if(treble >= 0x8)
   treble = ~(treble - 0x8) & 0xf;
  ctrl->value = (treble << 12)+(treble << 8)+(treble << 4)+(treble);
  return 0;
 }
 }
 return -EINVAL;
}
