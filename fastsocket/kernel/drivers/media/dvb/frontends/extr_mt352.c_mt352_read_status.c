
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt352_state {int dummy; } ;
struct dvb_frontend {struct mt352_state* demodulator_priv; } ;
typedef int fe_status_t ;


 int EREMOTEIO ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int STATUS_0 ;
 int STATUS_1 ;
 int STATUS_3 ;
 int mt352_read_register (struct mt352_state*,int ) ;

__attribute__((used)) static int mt352_read_status(struct dvb_frontend* fe, fe_status_t* status)
{
 struct mt352_state* state = fe->demodulator_priv;
 int s0, s1, s3;
 if ((s0 = mt352_read_register(state, STATUS_0)) < 0)
  return -EREMOTEIO;
 if ((s1 = mt352_read_register(state, STATUS_1)) < 0)
  return -EREMOTEIO;
 if ((s3 = mt352_read_register(state, STATUS_3)) < 0)
  return -EREMOTEIO;

 *status = 0;
 if (s0 & (1 << 4))
  *status |= FE_HAS_CARRIER;
 if (s0 & (1 << 1))
  *status |= FE_HAS_VITERBI;
 if (s0 & (1 << 5))
  *status |= FE_HAS_LOCK;
 if (s1 & (1 << 1))
  *status |= FE_HAS_SYNC;
 if (s3 & (1 << 6))
  *status |= FE_HAS_SIGNAL;

 if ((*status & (FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_SYNC)) !=
        (FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_SYNC))
  *status &= ~FE_HAS_LOCK;

 return 0;
}
