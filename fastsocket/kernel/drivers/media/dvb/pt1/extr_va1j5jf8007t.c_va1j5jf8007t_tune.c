
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct va1j5jf8007t_state {int tune_state; } ;
struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {struct va1j5jf8007t_state* demodulator_priv; } ;
typedef int fe_status_t ;


 int BUG () ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int HZ ;







 int va1j5jf8007t_check_frequency (struct va1j5jf8007t_state*,int*) ;
 int va1j5jf8007t_check_modulation (struct va1j5jf8007t_state*,int*,int*) ;
 int va1j5jf8007t_set_frequency (struct va1j5jf8007t_state*) ;
 int va1j5jf8007t_set_modulation (struct va1j5jf8007t_state*) ;

__attribute__((used)) static int
va1j5jf8007t_tune(struct dvb_frontend *fe,
    struct dvb_frontend_parameters *params,
    unsigned int mode_flags, unsigned int *delay,
    fe_status_t *status)
{
 struct va1j5jf8007t_state *state;
 int ret;
 int lock = 0, retry = 0;

 state = fe->demodulator_priv;

 if (params != ((void*)0))
  state->tune_state = 130;

 switch (state->tune_state) {
 case 131:
  *delay = 3 * HZ;
  *status = 0;
  return 0;

 case 130:
  ret = va1j5jf8007t_set_frequency(state);
  if (ret < 0)
   return ret;

  state->tune_state = 133;
  *delay = 0;
  *status = 0;
  return 0;

 case 133:
  ret = va1j5jf8007t_check_frequency(state, &lock);
  if (ret < 0)
   return ret;

  if (!lock) {
   *delay = (HZ + 999) / 1000;
   *status = 0;
   return 0;
  }

  state->tune_state = 129;
  *delay = 0;
  *status = FE_HAS_SIGNAL;
  return 0;

 case 129:
  ret = va1j5jf8007t_set_modulation(state);
  if (ret < 0)
   return ret;

  state->tune_state = 132;
  *delay = 0;
  *status = FE_HAS_SIGNAL;
  return 0;

 case 132:
  ret = va1j5jf8007t_check_modulation(state, &lock, &retry);
  if (ret < 0)
   return ret;

  if (!lock) {
   if (!retry) {
    state->tune_state = 134;
    *delay = 3 * HZ;
    *status = FE_HAS_SIGNAL;
    return 0;
   }
   *delay = (HZ + 999) / 1000;
   *status = FE_HAS_SIGNAL;
   return 0;
  }

  state->tune_state = 128;


 case 128:
  *delay = 3 * HZ;
  *status = FE_HAS_SIGNAL | FE_HAS_CARRIER | FE_HAS_LOCK;
  return 0;

 case 134:
  *delay = 3 * HZ;
  *status = FE_HAS_SIGNAL;
  return 0;
 }

 BUG();
}
