
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct va1j5jf8007t_state {int tune_state; } ;
struct dvb_frontend {struct va1j5jf8007t_state* demodulator_priv; } ;
typedef int fe_status_t ;


 int BUG () ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
__attribute__((used)) static int
va1j5jf8007t_read_status(struct dvb_frontend *fe, fe_status_t *status)
{
 struct va1j5jf8007t_state *state;

 state = fe->demodulator_priv;

 switch (state->tune_state) {
 case 131:
 case 130:
 case 133:
  *status = 0;
  return 0;


 case 129:
 case 132:
 case 134:
  *status |= FE_HAS_SIGNAL;
  return 0;

 case 128:
  *status |= FE_HAS_SIGNAL | FE_HAS_CARRIER | FE_HAS_LOCK;
  return 0;
 }

 BUG();
}
