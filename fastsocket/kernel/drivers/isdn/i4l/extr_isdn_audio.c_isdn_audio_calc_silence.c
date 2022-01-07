
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int idx; int state; } ;
typedef TYPE_2__ silence_state ;
struct TYPE_5__ {int* vpar; } ;
struct TYPE_7__ {TYPE_1__ emu; TYPE_2__* silence_state; } ;
typedef TYPE_3__ modem_info ;


 char abs (char) ;
 char* isdn_audio_alaw_to_ulaw ;

void
isdn_audio_calc_silence(modem_info * info, unsigned char *buf, int len, int fmt)
{
 silence_state *s = info->silence_state;
 int i;
 signed char c;

 if (!info->emu.vpar[1]) return;

 for (i = 0; i < len; i++) {
  if (fmt)
      c = isdn_audio_alaw_to_ulaw[*buf++];
   else
      c = *buf++;

  if (c > 0) c -= 128;
  c = abs(c);

  if (c > (info->emu.vpar[1] * 4)) {
   s->idx = 0;
   s->state = 1;
  } else {
   if (s->idx < 210000) s->idx++;
  }
 }
}
