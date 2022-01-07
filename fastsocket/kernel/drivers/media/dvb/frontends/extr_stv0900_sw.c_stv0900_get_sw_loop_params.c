
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0900_internal {int* symbol_rate; int* srch_range; int* srch_standard; int mclk; } ;
typedef int s32 ;
typedef enum fe_stv0900_search_standard { ____Placeholder_fe_stv0900_search_standard } fe_stv0900_search_standard ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;







__attribute__((used)) static void stv0900_get_sw_loop_params(struct stv0900_internal *intp,
    s32 *frequency_inc, s32 *sw_timeout,
    s32 *steps,
    enum fe_stv0900_demod_num demod)
{
 s32 timeout, freq_inc, max_steps, srate, max_carrier;

 enum fe_stv0900_search_standard standard;

 srate = intp->symbol_rate[demod];
 max_carrier = intp->srch_range[demod] / 1000;
 max_carrier += max_carrier / 10;
 standard = intp->srch_standard[demod];

 max_carrier = 65536 * (max_carrier / 2);
 max_carrier /= intp->mclk / 1000;

 if (max_carrier > 0x4000)
  max_carrier = 0x4000;

 freq_inc = srate;
 freq_inc /= intp->mclk >> 10;
 freq_inc = freq_inc << 6;

 switch (standard) {
 case 129:
 case 130:
  freq_inc *= 3;
  timeout = 20;
  break;
 case 128:
  freq_inc *= 4;
  timeout = 25;
  break;
 case 131:
 default:
  freq_inc *= 3;
  timeout = 25;
  break;
 }

 freq_inc /= 100;

 if ((freq_inc > max_carrier) || (freq_inc < 0))
  freq_inc = max_carrier / 2;

 timeout *= 27500;

 if (srate > 0)
  timeout /= srate / 1000;

 if ((timeout > 100) || (timeout < 0))
  timeout = 100;

 max_steps = (max_carrier / freq_inc) + 1;

 if ((max_steps > 100) || (max_steps < 0)) {
  max_steps = 100;
  freq_inc = max_carrier / max_steps;
 }

 *frequency_inc = freq_inc;
 *sw_timeout = timeout;
 *steps = max_steps;

}
