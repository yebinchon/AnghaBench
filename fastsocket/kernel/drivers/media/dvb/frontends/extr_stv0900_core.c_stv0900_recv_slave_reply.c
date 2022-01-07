
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0900_state {int demod; struct stv0900_internal* internal; } ;
struct stv0900_internal {int dummy; } ;
struct dvb_frontend {struct stv0900_state* demodulator_priv; } ;
struct dvb_diseqc_slave_reply {int msg_len; int * msg; } ;
typedef int s32 ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;


 int DISRXDATA ;
 int FIFO_BYTENBR ;
 int RX_END ;
 int msleep (int) ;
 int stv0900_get_bits (struct stv0900_internal*,int ) ;
 int stv0900_read_reg (struct stv0900_internal*,int ) ;

__attribute__((used)) static int stv0900_recv_slave_reply(struct dvb_frontend *fe,
    struct dvb_diseqc_slave_reply *reply)
{
 struct stv0900_state *state = fe->demodulator_priv;
 struct stv0900_internal *intp = state->internal;
 enum fe_stv0900_demod_num demod = state->demod;
 s32 i = 0;

 reply->msg_len = 0;

 while ((stv0900_get_bits(intp, RX_END) != 1) && (i < 10)) {
  msleep(10);
  i++;
 }

 if (stv0900_get_bits(intp, RX_END)) {
  reply->msg_len = stv0900_get_bits(intp, FIFO_BYTENBR);

  for (i = 0; i < reply->msg_len; i++)
   reply->msg[i] = stv0900_read_reg(intp, DISRXDATA);
 }

 return 0;
}
