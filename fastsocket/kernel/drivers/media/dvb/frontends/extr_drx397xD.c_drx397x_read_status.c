
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct drx397xD_state* demodulator_priv; } ;
struct drx397xD_state {int dummy; } ;
typedef int fe_status_t ;


 int ConfigureMPEGOutput (struct drx397xD_state*,int) ;
 int CorrectSysClockDeviation (struct drx397xD_state*) ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int GetLockStatus (struct drx397xD_state*,int*) ;

__attribute__((used)) static int drx397x_read_status(struct dvb_frontend *fe, fe_status_t *status)
{
 struct drx397xD_state *s = fe->demodulator_priv;
 int lockstat;

 GetLockStatus(s, &lockstat);

 *status = 0;
 if (lockstat & 2) {
  CorrectSysClockDeviation(s);
  ConfigureMPEGOutput(s, 1);
  *status = FE_HAS_LOCK | FE_HAS_SYNC | FE_HAS_VITERBI;
 }
 if (lockstat & 4)
  *status |= FE_HAS_CARRIER | FE_HAS_SIGNAL;

 return 0;
}
