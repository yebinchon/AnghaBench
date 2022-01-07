
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int audmode; } ;
struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {int audmode; int mode; scalar_t__ watch_stereo; scalar_t__ radio; struct CHIPDESC* desc; } ;
struct CHIPDESC {int (* setmode ) (struct CHIPSTATE*,int) ;} ;


 int EINVAL ;





 int stub1 (struct CHIPSTATE*,int) ;
 struct CHIPSTATE* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tvaudio_s_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 struct CHIPSTATE *chip = to_state(sd);
 struct CHIPDESC *desc = chip->desc;
 int mode = 0;

 if (!desc->setmode)
  return 0;
 if (chip->radio)
  return 0;

 switch (vt->audmode) {
 case 129:
 case 128:
 case 132:
 case 130:
  mode = vt->audmode;
  break;
 case 131:
  mode = 128;
  break;
 default:
  return -EINVAL;
 }
 chip->audmode = vt->audmode;

 if (mode) {
  chip->watch_stereo = 0;

  chip->mode = mode;
  desc->setmode(chip, mode);
 }
 return 0;
}
