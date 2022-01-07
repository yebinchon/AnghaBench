
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* DAC_LEFT ;
 int* DAC_RIGHT ;
 int sound_ticks ;

void q40_mksound(unsigned int hz, unsigned int ticks)
{


 if (hz == 0) {
  if (sound_ticks)
   sound_ticks = 1;

  *DAC_LEFT = 128;
  *DAC_RIGHT = 128;

  return;
 }

 if (sound_ticks == 0)
  sound_ticks = 1000;
 sound_ticks = ticks << 1;
}
