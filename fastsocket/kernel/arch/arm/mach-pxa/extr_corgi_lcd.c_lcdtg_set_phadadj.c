
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phadadj; } ;


 int DEFAULT_PHAD_QVGA ;
 int PHACTRL_ADRS ;
 int PHACTRL_PHASE_MANUAL ;
 int corgi_ssp_lcdtg_send (int ,int) ;
 TYPE_1__ sharpsl_param ;

__attribute__((used)) static void lcdtg_set_phadadj(int mode)
{
 int adj;
 switch(mode) {
  case 480:
  case 640:

   adj = sharpsl_param.phadadj;
   if (adj < 0) {
    adj = PHACTRL_PHASE_MANUAL;
   } else {
    adj = ((adj & 0x0f) << 1) | PHACTRL_PHASE_MANUAL;
   }
   break;
  case 240:
  case 320:
  default:

   adj = (DEFAULT_PHAD_QVGA << 1) | PHACTRL_PHASE_MANUAL;
   break;
 }

 corgi_ssp_lcdtg_send(PHACTRL_ADRS, adj);
}
