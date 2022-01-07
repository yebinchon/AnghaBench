
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* bytes; } ;
struct CHIPSTATE {TYPE_1__ shadow; } ;


 int TDA8425_S1 ;
 int TDA8425_S1_ML_SOUND_A ;
 int TDA8425_S1_ML_SOUND_B ;
 int TDA8425_S1_ML_STEREO ;
 int TDA8425_S1_STEREO_MONO ;
 int TDA8425_S1_STEREO_PSEUDO ;
 int TDA8425_S1_STEREO_SPATIAL ;
 int V4L2_TUNER_MODE_LANG1 ;
 int V4L2_TUNER_MODE_LANG2 ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int chip_write (struct CHIPSTATE*,int,int) ;

__attribute__((used)) static void tda8425_setmode(struct CHIPSTATE *chip, int mode)
{
 int s1 = chip->shadow.bytes[TDA8425_S1+1] & 0xe1;

 if (mode & V4L2_TUNER_MODE_LANG1) {
  s1 |= TDA8425_S1_ML_SOUND_A;
  s1 |= TDA8425_S1_STEREO_PSEUDO;

 } else if (mode & V4L2_TUNER_MODE_LANG2) {
  s1 |= TDA8425_S1_ML_SOUND_B;
  s1 |= TDA8425_S1_STEREO_PSEUDO;

 } else {
  s1 |= TDA8425_S1_ML_STEREO;

  if (mode & V4L2_TUNER_MODE_MONO)
   s1 |= TDA8425_S1_STEREO_MONO;
  if (mode & V4L2_TUNER_MODE_STEREO)
   s1 |= TDA8425_S1_STEREO_SPATIAL;
 }
 chip_write(chip,TDA8425_S1,s1);
}
