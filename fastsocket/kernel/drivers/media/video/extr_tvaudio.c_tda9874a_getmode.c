
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int* bytes; } ;
struct CHIPSTATE {TYPE_1__ shadow; struct v4l2_subdev sd; } ;


 int MAXREGS ;
 int TDA9874A_DSR ;
 int TDA9874A_NECR ;
 int TDA9874A_NSR ;
 int V4L2_TUNER_MODE_LANG1 ;
 int V4L2_TUNER_MODE_LANG2 ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int chip_read2 (struct CHIPSTATE*,int ) ;
 int debug ;
 scalar_t__ tda9874a_mode ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int,int,int) ;

__attribute__((used)) static int tda9874a_getmode(struct CHIPSTATE *chip)
{
 struct v4l2_subdev *sd = &chip->sd;
 int dsr,nsr,mode;
 int necr;

 mode = V4L2_TUNER_MODE_MONO;

 if(-1 == (dsr = chip_read2(chip,TDA9874A_DSR)))
  return mode;
 if(-1 == (nsr = chip_read2(chip,TDA9874A_NSR)))
  return mode;
 if(-1 == (necr = chip_read2(chip,TDA9874A_NECR)))
  return mode;


 chip->shadow.bytes[MAXREGS-2] = dsr;
 chip->shadow.bytes[MAXREGS-1] = nsr;

 if(tda9874a_mode) {
  if(nsr & 0x02)
   mode |= V4L2_TUNER_MODE_STEREO;
  if(nsr & 0x01)
   mode |= V4L2_TUNER_MODE_LANG1 | V4L2_TUNER_MODE_LANG2;
 } else {
  if(dsr & 0x02)
   mode |= V4L2_TUNER_MODE_STEREO;
  if(dsr & 0x04)
   mode |= V4L2_TUNER_MODE_LANG1 | V4L2_TUNER_MODE_LANG2;
 }

 v4l2_dbg(1, debug, sd, "tda9874a_getmode(): DSR=0x%X, NSR=0x%X, NECR=0x%X, return: %d.\n",
   dsr, nsr, necr, mode);
 return mode;
}
