
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSP_OPT_ULAW ;
 int * dsp_audio_s16_to_law ;
 int dsp_options ;
 int linear2alaw (int) ;
 int linear2ulaw (int) ;
 int reverse_bits (int ) ;

void
dsp_audio_generate_s2law_table(void)
{
 int i;

 if (dsp_options & DSP_OPT_ULAW) {

  for (i = -32768; i < 32768; i++) {
   dsp_audio_s16_to_law[i & 0xffff] =
    reverse_bits(linear2ulaw(i));
  }
 } else {

  for (i = -32768; i < 32768; i++) {
   dsp_audio_s16_to_law[i & 0xffff] =
    reverse_bits(linear2alaw(i));
  }
 }
}
