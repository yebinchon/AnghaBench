
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;


 int DIB8000M_POWER_ALL ;
 int DIBX000_ADC_ON ;
 int DIBX000_SLOW_ADC_ON ;
 scalar_t__ dib8000_set_adc_state (struct dib8000_state*,int ) ;
 int dib8000_set_power_mode (struct dib8000_state*,int ) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib8000_wakeup(struct dvb_frontend *fe)
{
 struct dib8000_state *state = fe->demodulator_priv;

 dib8000_set_power_mode(state, DIB8000M_POWER_ALL);
 dib8000_set_adc_state(state, DIBX000_ADC_ON);
 if (dib8000_set_adc_state(state, DIBX000_SLOW_ADC_ON) != 0)
  dprintk("could not start Slow ADC");

 return 0;
}
