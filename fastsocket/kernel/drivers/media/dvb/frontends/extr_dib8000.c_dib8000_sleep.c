
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;


 int DIB8000M_POWER_INTERFACE_ONLY ;
 int DIBX000_ADC_OFF ;
 int DIBX000_SLOW_ADC_OFF ;
 int OUTMODE_HIGH_Z ;
 int dib8000_set_adc_state (struct dib8000_state*,int ) ;
 int dib8000_set_output_mode (struct dib8000_state*,int ) ;
 int dib8000_set_power_mode (struct dib8000_state*,int ) ;

__attribute__((used)) static int dib8000_sleep(struct dvb_frontend *fe)
{
 struct dib8000_state *st = fe->demodulator_priv;
 if (1) {
  dib8000_set_output_mode(st, OUTMODE_HIGH_Z);
  dib8000_set_power_mode(st, DIB8000M_POWER_INTERFACE_ONLY);
  return dib8000_set_adc_state(st, DIBX000_SLOW_ADC_OFF) | dib8000_set_adc_state(st, DIBX000_ADC_OFF);
 } else {

  return 0;
 }
}
