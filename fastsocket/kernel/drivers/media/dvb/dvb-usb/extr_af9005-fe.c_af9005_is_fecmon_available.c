
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {int d; } ;


 int af9005_read_register_bits (int ,int ,int ,int ,int*) ;
 int fec_vtb_rsd_mon_en_len ;
 int fec_vtb_rsd_mon_en_pos ;
 int reg_ofsm_read_rbc_en_len ;
 int reg_ofsm_read_rbc_en_pos ;
 int xd_p_fec_vtb_rsd_mon_en ;
 int xd_p_reg_ofsm_read_rbc_en ;

__attribute__((used)) static int af9005_is_fecmon_available(struct dvb_frontend *fe, int *available)
{
 struct af9005_fe_state *state = fe->demodulator_priv;
 int ret;
 u8 temp;

 *available = 0;

 ret = af9005_read_register_bits(state->d, xd_p_fec_vtb_rsd_mon_en,
     fec_vtb_rsd_mon_en_pos,
     fec_vtb_rsd_mon_en_len, &temp);
 if (ret)
  return ret;
 if (temp & 1) {
  ret =
      af9005_read_register_bits(state->d,
           xd_p_reg_ofsm_read_rbc_en,
           reg_ofsm_read_rbc_en_pos,
           reg_ofsm_read_rbc_en_len, &temp);
  if (ret)
   return ret;
  if ((temp & 1) == 0)
   *available = 1;

 }
 return 0;
}
