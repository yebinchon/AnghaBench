
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv0297_state {int dummy; } ;
struct dvb_frontend {struct stv0297_state* demodulator_priv; } ;
typedef int fe_status_t ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int stv0297_readreg (struct stv0297_state*,int) ;

__attribute__((used)) static int stv0297_read_status(struct dvb_frontend *fe, fe_status_t * status)
{
 struct stv0297_state *state = fe->demodulator_priv;

 u8 sync = stv0297_readreg(state, 0xDF);

 *status = 0;
 if (sync & 0x80)
  *status |=
   FE_HAS_SYNC | FE_HAS_SIGNAL | FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_LOCK;
 return 0;
}
