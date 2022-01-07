
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {int d; } ;


 int af9005_write_ofdm_register (int ,int ,int) ;
 int af9005_write_register_bits (int ,int ,int ,int ,int) ;
 int fec_rsd_ber_rst_len ;
 int fec_rsd_ber_rst_pos ;
 int xd_p_fec_rsd_ber_rst ;
 int xd_p_fec_rsd_packet_unit_15_8 ;
 int xd_p_fec_rsd_packet_unit_7_0 ;

__attribute__((used)) static int af9005_reset_post_viterbi(struct dvb_frontend *fe)
{
 struct af9005_fe_state *state = fe->demodulator_priv;
 int ret;


 ret =
     af9005_write_ofdm_register(state->d, xd_p_fec_rsd_packet_unit_7_0,
           10000 & 0xff);
 if (ret)
  return ret;
 ret =
     af9005_write_ofdm_register(state->d, xd_p_fec_rsd_packet_unit_15_8,
           10000 >> 8);
 if (ret)
  return ret;

 ret =
     af9005_write_register_bits(state->d, xd_p_fec_rsd_ber_rst,
           fec_rsd_ber_rst_pos, fec_rsd_ber_rst_len,
           1);

 return ret;
}
