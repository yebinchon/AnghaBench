
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CHIPSTATE {int dummy; } ;


 int TA8874Z_B0 ;
 int TA8874Z_B1 ;
 int V4L2_TUNER_MODE_LANG1 ;
 int V4L2_TUNER_MODE_LANG2 ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int chip_read (struct CHIPSTATE*) ;

__attribute__((used)) static int ta8874z_getmode(struct CHIPSTATE *chip)
{
 int val, mode;

 val = chip_read(chip);
 mode = V4L2_TUNER_MODE_MONO;
 if (val & TA8874Z_B1){
  mode |= V4L2_TUNER_MODE_LANG1 | V4L2_TUNER_MODE_LANG2;
 }else if (!(val & TA8874Z_B0)){
  mode |= V4L2_TUNER_MODE_STEREO;
 }

 return mode;
}
