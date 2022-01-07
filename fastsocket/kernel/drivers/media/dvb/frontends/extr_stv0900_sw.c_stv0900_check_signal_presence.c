
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0900_internal {int* srch_range; int mclk; } ;
typedef int s32 ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;


 int AGC2I0 ;
 int AGC2I1 ;
 int CFR1 ;
 int CFR2 ;
 int FALSE ;
 int TRUE ;
 int ge2comp (int,int) ;
 int stv0900_read_reg (struct stv0900_internal*,int ) ;

int stv0900_check_signal_presence(struct stv0900_internal *intp,
     enum fe_stv0900_demod_num demod)
{
 s32 carr_offset,
  agc2_integr,
  max_carrier;

 int no_signal = FALSE;

 carr_offset = (stv0900_read_reg(intp, CFR2) << 8)
     | stv0900_read_reg(intp, CFR1);
 carr_offset = ge2comp(carr_offset, 16);
 agc2_integr = (stv0900_read_reg(intp, AGC2I1) << 8)
     | stv0900_read_reg(intp, AGC2I0);
 max_carrier = intp->srch_range[demod] / 1000;

 max_carrier += (max_carrier / 10);
 max_carrier = 65536 * (max_carrier / 2);
 max_carrier /= intp->mclk / 1000;
 if (max_carrier > 0x4000)
  max_carrier = 0x4000;

 if ((agc2_integr > 0x2000)
   || (carr_offset > (2 * max_carrier))
   || (carr_offset < (-2 * max_carrier)))
  no_signal = TRUE;

 return no_signal;
}
