
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {int dummy; } ;


 int DIB7000P_POWER_INTERFACE_ONLY ;
 int OUTMODE_HIGH_Z ;
 int dib7000p_set_output_mode (struct dib7000p_state*,int ) ;
 int dib7000p_set_power_mode (struct dib7000p_state*,int ) ;

__attribute__((used)) static int dib7000p_sleep(struct dvb_frontend *demod)
{
 struct dib7000p_state *state = demod->demodulator_priv;
 return dib7000p_set_output_mode(state, OUTMODE_HIGH_Z) | dib7000p_set_power_mode(state, DIB7000P_POWER_INTERFACE_ONLY);
}
