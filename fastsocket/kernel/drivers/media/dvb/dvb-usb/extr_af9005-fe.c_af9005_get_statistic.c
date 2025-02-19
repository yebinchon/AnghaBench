
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dvb_frontend {struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {scalar_t__ pre_vit_bit_count; int ber; scalar_t__ abort_count; int unc; int post_vit_bit_count; int post_vit_error_count; scalar_t__ pre_vit_error_count; } ;


 int af9005_get_post_vit_ber (struct dvb_frontend*,int *,int *,scalar_t__*) ;
 int af9005_get_pre_vit_err_bit_count (struct dvb_frontend*,scalar_t__*,scalar_t__*) ;
 int af9005_is_fecmon_available (struct dvb_frontend*,int*) ;
 int af9005_reset_post_viterbi (struct dvb_frontend*) ;
 int af9005_reset_pre_viterbi (struct dvb_frontend*) ;
 int deb_info (char*) ;
 int do_div (int,int) ;

__attribute__((used)) static int af9005_get_statistic(struct dvb_frontend *fe)
{
 struct af9005_fe_state *state = fe->demodulator_priv;
 int ret, fecavailable;
 u64 numerator, denominator;

 deb_info("GET STATISTIC\n");
 ret = af9005_is_fecmon_available(fe, &fecavailable);
 if (ret)
  return ret;
 if (!fecavailable) {
  deb_info("fecmon not available\n");
  return 0;
 }

 ret = af9005_get_pre_vit_err_bit_count(fe, &state->pre_vit_error_count,
            &state->pre_vit_bit_count);
 if (ret == 0) {
  af9005_reset_pre_viterbi(fe);
  if (state->pre_vit_bit_count > 0) {



   numerator =
       (u64) state->pre_vit_error_count * (u64) 1000000000;
   denominator = (u64) state->pre_vit_bit_count;
   state->ber = do_div(numerator, denominator);
  } else {
   state->ber = 0xffffffff;
  }
 }

 ret = af9005_get_post_vit_ber(fe, &state->post_vit_error_count,
          &state->post_vit_bit_count,
          &state->abort_count);
 if (ret == 0) {
  ret = af9005_reset_post_viterbi(fe);
  state->unc += state->abort_count;
  if (ret)
   return ret;
 }
 return 0;
}
