
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {struct v4l2_subdev sd; } ;


 int TDA9840_DS_DUAL ;
 int TDA9840_ST_STEREO ;
 int V4L2_TUNER_MODE_LANG1 ;
 int V4L2_TUNER_MODE_LANG2 ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int chip_read (struct CHIPSTATE*) ;
 int debug ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int) ;

__attribute__((used)) static int tda9840_getmode(struct CHIPSTATE *chip)
{
 struct v4l2_subdev *sd = &chip->sd;
 int val, mode;

 val = chip_read(chip);
 mode = V4L2_TUNER_MODE_MONO;
 if (val & TDA9840_DS_DUAL)
  mode |= V4L2_TUNER_MODE_LANG1 | V4L2_TUNER_MODE_LANG2;
 if (val & TDA9840_ST_STEREO)
  mode |= V4L2_TUNER_MODE_STEREO;

 v4l2_dbg(1, debug, sd, "tda9840_getmode(): raw chip read: %d, return: %d\n",
  val, mode);
 return mode;
}
