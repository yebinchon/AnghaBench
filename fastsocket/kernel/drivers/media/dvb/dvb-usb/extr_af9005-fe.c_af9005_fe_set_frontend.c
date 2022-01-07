
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {int bandwidth; } ;
struct TYPE_6__ {TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int frequency; } ;
struct TYPE_7__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;int * release; } ;
struct TYPE_8__ {TYPE_3__ tuner_ops; } ;
struct dvb_frontend {TYPE_4__ ops; struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {int original_fcw; int strong; int next_status_check; scalar_t__ abort_count; scalar_t__ post_vit_error_count; scalar_t__ ber; scalar_t__ pre_vit_bit_count; scalar_t__ pre_vit_error_count; int d; scalar_t__ original_if_unplug_th; int original_aci1_if_top; int original_aci0_if_top; int original_if_top; int original_rf_top; } ;


 int ENODEV ;
 int XD_MP2IF_MISC ;
 int af9005_fe_program_cfoe (int ,int ) ;
 int af9005_fe_select_bw (int ,int ) ;
 int af9005_led_control (int ,int ) ;
 int af9005_reset_post_viterbi (struct dvb_frontend*) ;
 int af9005_reset_pre_viterbi (struct dvb_frontend*) ;
 int af9005_write_ofdm_register (int ,int,scalar_t__) ;
 int af9005_write_register_bits (int ,int ,int,int,int ) ;
 int af9005_write_tuner_registers (int ,int,scalar_t__*,int) ;
 int af9005_write_word_agc (int ,int,int,int,int,int ) ;
 int deb_info (char*,...) ;
 int err (char*) ;
 int jiffies ;
 int reg_api_retrain_request_pos ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int xd_p_reg_aagc_if_top_numerator_7_0 ;
 int xd_p_reg_aagc_if_top_numerator_9_8 ;
 int xd_p_reg_aagc_rf_top_numerator_7_0 ;
 int xd_p_reg_aagc_rf_top_numerator_9_8 ;
 int xd_p_reg_api_retrain_request ;
 int xd_p_reg_unplug_th ;

__attribute__((used)) static int af9005_fe_set_frontend(struct dvb_frontend *fe,
      struct dvb_frontend_parameters *fep)
{
 struct af9005_fe_state *state = fe->demodulator_priv;
 int ret;
 u8 temp, temp0, temp1, temp2;

 deb_info("af9005_fe_set_frontend freq %d bw %d\n", fep->frequency,
   fep->u.ofdm.bandwidth);
 if (fe->ops.tuner_ops.release == ((void*)0)) {
  err("Tuner not attached");
  return -ENODEV;
 }

 deb_info("turn off led\n");

 ret = af9005_led_control(state->d, 0);
 if (ret)
  return ret;

 ret = af9005_write_register_bits(state->d, XD_MP2IF_MISC, 2, 1, 0);
 if (ret)
  return ret;


 deb_info("set FCW to default value\n");
 temp0 = (u8) (state->original_fcw & 0x000000ff);
 temp1 = (u8) ((state->original_fcw & 0x0000ff00) >> 8);
 temp2 = (u8) ((state->original_fcw & 0x00ff0000) >> 16);
 ret = af9005_write_ofdm_register(state->d, 0xae1a, temp0);
 if (ret)
  return ret;
 ret = af9005_write_ofdm_register(state->d, 0xae19, temp1);
 if (ret)
  return ret;
 ret = af9005_write_ofdm_register(state->d, 0xae18, temp2);
 if (ret)
  return ret;


 deb_info("restore original TOPs\n");
 ret =
     af9005_write_word_agc(state->d,
      xd_p_reg_aagc_rf_top_numerator_9_8,
      xd_p_reg_aagc_rf_top_numerator_7_0, 0, 2,
      state->original_rf_top);
 if (ret)
  return ret;
 ret =
     af9005_write_word_agc(state->d,
      xd_p_reg_aagc_if_top_numerator_9_8,
      xd_p_reg_aagc_if_top_numerator_7_0, 0, 2,
      state->original_if_top);
 if (ret)
  return ret;
 ret =
     af9005_write_word_agc(state->d, 0xA60E, 0xA60A, 4, 2,
      state->original_aci0_if_top);
 if (ret)
  return ret;
 ret =
     af9005_write_word_agc(state->d, 0xA60E, 0xA60B, 6, 2,
      state->original_aci1_if_top);
 if (ret)
  return ret;


 deb_info("select bandwidth");
 ret = af9005_fe_select_bw(state->d, fep->u.ofdm.bandwidth);
 if (ret)
  return ret;
 ret = af9005_fe_program_cfoe(state->d, fep->u.ofdm.bandwidth);
 if (ret)
  return ret;


 deb_info("clear easy mode flag\n");
 ret = af9005_write_ofdm_register(state->d, 0xaefd, 0);
 if (ret)
  return ret;


 deb_info("set unplug threshold to original value\n");
 ret =
     af9005_write_ofdm_register(state->d, xd_p_reg_unplug_th,
           state->original_if_unplug_th);
 if (ret)
  return ret;

 deb_info("set tuner\n");
 ret = fe->ops.tuner_ops.set_params(fe, fep);
 if (ret)
  return ret;


 deb_info("trigger ofsm\n");
 temp = 0;
 ret = af9005_write_tuner_registers(state->d, 0xffff, &temp, 1);
 if (ret)
  return ret;


 deb_info("clear retrain and freeze flag\n");
 ret =
     af9005_write_register_bits(state->d,
           xd_p_reg_api_retrain_request,
           reg_api_retrain_request_pos, 2, 0);
 if (ret)
  return ret;


 af9005_reset_pre_viterbi(fe);
 af9005_reset_post_viterbi(fe);
 state->pre_vit_error_count = 0;
 state->pre_vit_bit_count = 0;
 state->ber = 0;
 state->post_vit_error_count = 0;

 state->abort_count = 0;

 state->next_status_check = jiffies;
 state->strong = -1;

 return 0;
}
