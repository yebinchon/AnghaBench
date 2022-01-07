
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {struct v4l2_subdev sd; } ;


 int TDA9873_DUAL ;
 int TDA9873_STEREO ;
 int V4L2_TUNER_MODE_LANG1 ;
 int V4L2_TUNER_MODE_LANG2 ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int chip_read (struct CHIPSTATE*) ;
 int debug ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int) ;

__attribute__((used)) static int tda9873_getmode(struct CHIPSTATE *chip)
{
 struct v4l2_subdev *sd = &chip->sd;
 int val,mode;

 val = chip_read(chip);
 mode = V4L2_TUNER_MODE_MONO;
 if (val & TDA9873_STEREO)
  mode |= V4L2_TUNER_MODE_STEREO;
 if (val & TDA9873_DUAL)
  mode |= V4L2_TUNER_MODE_LANG1 | V4L2_TUNER_MODE_LANG2;
 v4l2_dbg(1, debug, sd, "tda9873_getmode(): raw chip read: %d, return: %d\n",
  val, mode);
 return mode;
}
