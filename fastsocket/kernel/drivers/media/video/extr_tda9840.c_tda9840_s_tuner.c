
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int audmode; scalar_t__ index; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int SWITCH ;
 int TDA9840_SET_BOTH ;
 int TDA9840_SET_LANG1 ;
 int TDA9840_SET_LANG2 ;
 int TDA9840_SET_MONO ;
 int TDA9840_SET_STEREO ;




 int debug ;
 int tda9840_write (struct v4l2_subdev*,int ,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int tda9840_s_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *t)
{
 int byte;

 if (t->index)
  return -EINVAL;

 switch (t->audmode) {
 case 128:
  byte = TDA9840_SET_STEREO;
  break;
 case 130:
  byte = TDA9840_SET_BOTH;
  break;
 case 131:
  byte = TDA9840_SET_LANG1;
  break;
 case 129:
  byte = TDA9840_SET_LANG2;
  break;
 default:
  byte = TDA9840_SET_MONO;
  break;
 }
 v4l2_dbg(1, debug, sd, "TDA9840_SWITCH: 0x%02x\n", byte);
 tda9840_write(sd, SWITCH, byte);
 return 0;
}
