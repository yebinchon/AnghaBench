
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {struct v4l2_subdev sd; } ;
typedef int audiocmd ;






 int chip_cmd (struct CHIPSTATE*,char*,int *) ;
 int debug ;
 int ta8874z_main ;
 int ta8874z_mono ;
 int ta8874z_stereo ;
 int ta8874z_sub ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static void ta8874z_setmode(struct CHIPSTATE *chip, int mode)
{
 struct v4l2_subdev *sd = &chip->sd;
 int update = 1;
 audiocmd *t = ((void*)0);

 v4l2_dbg(1, debug, sd, "ta8874z_setmode(): mode: 0x%02x\n", mode);

 switch(mode){
 case 129:
  t = &ta8874z_mono;
  break;
 case 128:
  t = &ta8874z_stereo;
  break;
 case 131:
  t = &ta8874z_main;
  break;
 case 130:
  t = &ta8874z_sub;
  break;
 default:
  update = 0;
 }

 if(update)
  chip_cmd(chip, "TA8874Z", t);
}
