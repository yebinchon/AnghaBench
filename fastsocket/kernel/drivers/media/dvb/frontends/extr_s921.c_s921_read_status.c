
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s921_state {int dummy; } ;
struct dvb_frontend {struct s921_state* demodulator_priv; } ;
typedef int fe_status_t ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int dprintk (char*,int) ;
 int s921_readreg (struct s921_state*,int) ;

__attribute__((used)) static int s921_read_status(struct dvb_frontend *fe, fe_status_t *status)
{
 struct s921_state *state = fe->demodulator_priv;
 int regstatus, rc;

 *status = 0;

 rc = s921_readreg(state, 0x81);
 if (rc < 0)
  return rc;

 regstatus = rc << 8;

 rc = s921_readreg(state, 0x82);
 if (rc < 0)
  return rc;

 regstatus |= rc;

 dprintk("status = %04x\n", regstatus);


 if ((regstatus & 0xff) == 0x40) {
  *status = FE_HAS_SIGNAL |
     FE_HAS_CARRIER |
     FE_HAS_VITERBI |
     FE_HAS_SYNC |
     FE_HAS_LOCK;
 } else if (regstatus & 0x40) {

  *status = FE_HAS_SIGNAL |
     FE_HAS_CARRIER |
     FE_HAS_VITERBI |
     FE_HAS_SYNC;
 }

 return 0;
}
