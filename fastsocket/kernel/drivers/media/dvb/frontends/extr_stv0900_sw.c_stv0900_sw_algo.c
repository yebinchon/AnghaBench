
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0900_internal {int* srch_standard; int chip_id; } ;
typedef int s32 ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;


 int CARFREQ ;
 int CORRELABS ;
 int DMDCFGMD ;
 int FALSE ;
 int FLYWHEEL_CPT ;
 int HEADER_MODE ;

 int STV0900_DVBS2_FOUND ;



 int TRUE ;
 int msleep (int) ;
 int stv0900_check_signal_presence (struct stv0900_internal*,int) ;
 int stv0900_get_bits (struct stv0900_internal*,int ) ;
 int stv0900_get_sw_loop_params (struct stv0900_internal*,int*,int*,int*,int) ;
 int stv0900_search_carr_sw_loop (struct stv0900_internal*,int,int,int,int,int) ;
 int stv0900_write_reg (struct stv0900_internal*,int ,int) ;

__attribute__((used)) static int stv0900_sw_algo(struct stv0900_internal *intp,
    enum fe_stv0900_demod_num demod)
{
 int lock = FALSE,
  no_signal,
  zigzag;
 s32 s2fw,
  fqc_inc,
  sft_stp_tout,
  trial_cntr,
  max_steps;

 stv0900_get_sw_loop_params(intp, &fqc_inc, &sft_stp_tout,
     &max_steps, demod);
 switch (intp->srch_standard[demod]) {
 case 129:
 case 130:
  if (intp->chip_id >= 0x20)
   stv0900_write_reg(intp, CARFREQ, 0x3b);
  else
   stv0900_write_reg(intp, CARFREQ, 0xef);

  stv0900_write_reg(intp, DMDCFGMD, 0x49);
  zigzag = FALSE;
  break;
 case 128:
  if (intp->chip_id >= 0x20)
   stv0900_write_reg(intp, CORRELABS, 0x79);
  else
   stv0900_write_reg(intp, CORRELABS, 0x68);

  stv0900_write_reg(intp, DMDCFGMD, 0x89);

  zigzag = TRUE;
  break;
 case 131:
 default:
  if (intp->chip_id >= 0x20) {
   stv0900_write_reg(intp, CARFREQ, 0x3b);
   stv0900_write_reg(intp, CORRELABS, 0x79);
  } else {
   stv0900_write_reg(intp, CARFREQ, 0xef);
   stv0900_write_reg(intp, CORRELABS, 0x68);
  }

  stv0900_write_reg(intp, DMDCFGMD, 0xc9);
  zigzag = FALSE;
  break;
 }

 trial_cntr = 0;
 do {
  lock = stv0900_search_carr_sw_loop(intp,
      fqc_inc,
      sft_stp_tout,
      zigzag,
      max_steps,
      demod);
  no_signal = stv0900_check_signal_presence(intp, demod);
  trial_cntr++;
  if ((lock == TRUE)
    || (no_signal == TRUE)
    || (trial_cntr == 2)) {

   if (intp->chip_id >= 0x20) {
    stv0900_write_reg(intp, CARFREQ, 0x49);
    stv0900_write_reg(intp, CORRELABS, 0x9e);
   } else {
    stv0900_write_reg(intp, CARFREQ, 0xed);
    stv0900_write_reg(intp, CORRELABS, 0x88);
   }

   if ((stv0900_get_bits(intp, HEADER_MODE) ==
      STV0900_DVBS2_FOUND) &&
       (lock == TRUE)) {
    msleep(sft_stp_tout);
    s2fw = stv0900_get_bits(intp, FLYWHEEL_CPT);

    if (s2fw < 0xd) {
     msleep(sft_stp_tout);
     s2fw = stv0900_get_bits(intp,
        FLYWHEEL_CPT);
    }

    if (s2fw < 0xd) {
     lock = FALSE;

     if (trial_cntr < 2) {
      if (intp->chip_id >= 0x20)
       stv0900_write_reg(intp,
        CORRELABS,
        0x79);
      else
       stv0900_write_reg(intp,
        CORRELABS,
        0x68);

      stv0900_write_reg(intp,
        DMDCFGMD,
        0x89);
     }
    }
   }
  }

 } while ((lock == FALSE)
  && (trial_cntr < 2)
  && (no_signal == FALSE));

 return lock;
}
