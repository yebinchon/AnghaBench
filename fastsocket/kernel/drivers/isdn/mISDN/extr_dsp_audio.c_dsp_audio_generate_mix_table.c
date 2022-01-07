
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int* dsp_audio_law_to_s32 ;
 int * dsp_audio_mix_law ;
 int * dsp_audio_s16_to_law ;

void
dsp_audio_generate_mix_table(void)
{
 int i, j;
 s32 sample;

 i = 0;
 while (i < 256) {
  j = 0;
  while (j < 256) {
   sample = dsp_audio_law_to_s32[i];
   sample += dsp_audio_law_to_s32[j];
   if (sample > 32767)
    sample = 32767;
   if (sample < -32768)
    sample = -32768;
   dsp_audio_mix_law[(i<<8)|j] =
    dsp_audio_s16_to_law[sample & 0xffff];
   j++;
  }
  i++;
 }
}
