
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sk_buff {int len; size_t* data; } ;


 size_t** dsp_audio_volume_change ;

void
dsp_change_volume(struct sk_buff *skb, int volume)
{
 u8 *volume_change;
 int i, ii;
 u8 *p;
 int shift;

 if (volume == 0)
  return;


 if (volume < 0) {
  shift = volume + 8;
  if (shift < 0)
   shift = 0;
 } else {
  shift = volume + 7;
  if (shift > 15)
   shift = 15;
 }
 volume_change = dsp_audio_volume_change[shift];
 i = 0;
 ii = skb->len;
 p = skb->data;

 while (i < ii) {
  *p = volume_change[*p];
  p++;
  i++;
 }
}
