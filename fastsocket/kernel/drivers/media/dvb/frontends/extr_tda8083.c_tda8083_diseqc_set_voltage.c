
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8083_state {int dummy; } ;
struct dvb_frontend {struct tda8083_state* demodulator_priv; } ;
typedef int fe_sec_voltage_t ;


 int tda8083_set_voltage (struct tda8083_state*,int ) ;
 int tda8083_writereg (struct tda8083_state*,int,int) ;

__attribute__((used)) static int tda8083_diseqc_set_voltage(struct dvb_frontend* fe, fe_sec_voltage_t voltage)
{
 struct tda8083_state* state = fe->demodulator_priv;

 tda8083_set_voltage (state, voltage);
 tda8083_writereg (state, 0x00, 0x3c);
 tda8083_writereg (state, 0x00, 0x04);

 return 0;
}
