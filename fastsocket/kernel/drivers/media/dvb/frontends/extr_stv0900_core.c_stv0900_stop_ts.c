
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0900_state {int demod; struct stv0900_internal* internal; } ;
struct stv0900_internal {int dummy; } ;
struct dvb_frontend {struct stv0900_state* demodulator_priv; } ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;


 int RST_HWARE ;
 int TRUE ;
 int stv0900_write_bits (struct stv0900_internal*,int ,int) ;

__attribute__((used)) static int stv0900_stop_ts(struct dvb_frontend *fe, int stop_ts)
{

 struct stv0900_state *state = fe->demodulator_priv;
 struct stv0900_internal *intp = state->internal;
 enum fe_stv0900_demod_num demod = state->demod;

 if (stop_ts == TRUE)
  stv0900_write_bits(intp, RST_HWARE, 1);
 else
  stv0900_write_bits(intp, RST_HWARE, 0);

 return 0;
}
