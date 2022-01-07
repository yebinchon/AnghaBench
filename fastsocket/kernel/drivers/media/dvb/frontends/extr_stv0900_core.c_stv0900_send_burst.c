
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv0900_state {int demod; struct stv0900_internal* internal; } ;
struct stv0900_internal {int dummy; } ;
struct dvb_frontend {struct stv0900_state* demodulator_priv; } ;
typedef int fe_sec_mini_cmd_t ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;


 int DISTX_MODE ;


 int stv0900_diseqc_send (struct stv0900_internal*,int*,int,int) ;
 int stv0900_write_bits (struct stv0900_internal*,int ,int) ;

__attribute__((used)) static int stv0900_send_burst(struct dvb_frontend *fe, fe_sec_mini_cmd_t burst)
{
 struct stv0900_state *state = fe->demodulator_priv;
 struct stv0900_internal *intp = state->internal;
 enum fe_stv0900_demod_num demod = state->demod;
 u8 data;


 switch (burst) {
 case 129:
  stv0900_write_bits(intp, DISTX_MODE, 3);
  data = 0x00;
  stv0900_diseqc_send(intp, &data, 1, state->demod);
  break;
 case 128:
  stv0900_write_bits(intp, DISTX_MODE, 2);
  data = 0xff;
  stv0900_diseqc_send(intp, &data, 1, state->demod);
  break;
 }

 return 0;
}
