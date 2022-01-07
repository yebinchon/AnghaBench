
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cx88_core {scalar_t__ audiomode_manual; int tvaudio; int use_nicam; scalar_t__ audiomode_current; } ;


 int AUD_CTL ;
 int AUD_STATUS ;
 scalar_t__ EN_A2_FORCE_MONO1 ;
 scalar_t__ EN_A2_FORCE_MONO2 ;
 scalar_t__ EN_A2_FORCE_STEREO ;
 int EN_BTSC_AUTO_STEREO ;
 int EN_BTSC_FORCE_MONO ;
 int EN_BTSC_FORCE_SAP ;
 int EN_BTSC_FORCE_STEREO ;
 scalar_t__ EN_FMRADIO_AUTO_STEREO ;
 scalar_t__ EN_FMRADIO_FORCE_MONO ;
 int EN_NICAM_FORCE_MONO1 ;
 int EN_NICAM_FORCE_MONO2 ;
 int EN_NICAM_FORCE_STEREO ;
 int SHADOW_AUD_VOL_CTL ;
 scalar_t__ UNSET ;
 int cx_andor (int ,scalar_t__,scalar_t__) ;
 int cx_read (int ) ;
 int cx_sread (int ) ;
 int dprintk (char*,scalar_t__,scalar_t__,int ,int ,int ) ;
 int set_audio_standard_A2 (struct cx88_core*,scalar_t__) ;
 int set_audio_standard_BTSC (struct cx88_core*,int,int ) ;
 int set_audio_standard_NICAM (struct cx88_core*,int ) ;

void cx88_set_stereo(struct cx88_core *core, u32 mode, int manual)
{
 u32 ctl = UNSET;
 u32 mask = UNSET;

 if (manual) {
  core->audiomode_manual = mode;
 } else {
  if (UNSET != core->audiomode_manual)
   return;
 }
 core->audiomode_current = mode;

 switch (core->tvaudio) {
 case 137:
  switch (mode) {
  case 140:
   set_audio_standard_BTSC(core, 0, EN_BTSC_FORCE_MONO);
   break;
  case 143:
   set_audio_standard_BTSC(core, 0, EN_BTSC_AUTO_STEREO);
   break;
  case 141:
   set_audio_standard_BTSC(core, 1, EN_BTSC_FORCE_SAP);
   break;
  case 139:
  case 142:
   set_audio_standard_BTSC(core, 0, EN_BTSC_FORCE_STEREO);
   break;
  }
  break;
 case 138:
 case 136:
 case 129:
 case 133:
 case 130:
  if (1 == core->use_nicam) {
   switch (mode) {
   case 140:
   case 143:
    set_audio_standard_NICAM(core,
        EN_NICAM_FORCE_MONO1);
    break;
   case 141:
    set_audio_standard_NICAM(core,
        EN_NICAM_FORCE_MONO2);
    break;
   case 139:
   case 142:
    set_audio_standard_NICAM(core,
        EN_NICAM_FORCE_STEREO);
    break;
   }
  } else {
   if ((core->tvaudio == 133) || (core->tvaudio == 130)) {

    set_audio_standard_A2(core, EN_A2_FORCE_MONO1);
   } else {

    mask = 0x3f;
    switch (mode) {
    case 140:
    case 143:
     ctl = EN_A2_FORCE_MONO1;
     break;
    case 141:
     ctl = EN_A2_FORCE_MONO2;
     break;
    case 139:
    case 142:
     ctl = EN_A2_FORCE_STEREO;
     break;
    }
   }
  }
  break;
 case 134:
  switch (mode) {
  case 140:
   ctl = EN_FMRADIO_FORCE_MONO;
   mask = 0x3f;
   break;
  case 139:
   ctl = EN_FMRADIO_AUTO_STEREO;
   mask = 0x3f;
   break;
  }
  break;
 case 132:
 case 128:
 case 135:
 case 131:

  break;
 }

 if (UNSET != ctl) {
  dprintk("cx88_set_stereo: mask 0x%x, ctl 0x%x "
   "[status=0x%x,ctl=0x%x,vol=0x%x]\n",
   mask, ctl, cx_read(AUD_STATUS),
   cx_read(AUD_CTL), cx_sread(SHADOW_AUD_VOL_CTL));
  cx_andor(AUD_CTL, mask, ctl);
 }
 return;
}
