
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ves1x93_state {int dummy; } ;
struct dvb_frontend {struct ves1x93_state* demodulator_priv; } ;
typedef int fe_sec_voltage_t ;


 int EINVAL ;



 int ves1x93_writereg (struct ves1x93_state*,int,int) ;

__attribute__((used)) static int ves1x93_set_voltage (struct dvb_frontend* fe, fe_sec_voltage_t voltage)
{
 struct ves1x93_state* state = fe->demodulator_priv;

 switch (voltage) {
 case 130:
  return ves1x93_writereg (state, 0x1f, 0x20);
 case 129:
  return ves1x93_writereg (state, 0x1f, 0x30);
 case 128:
  return ves1x93_writereg (state, 0x1f, 0x00);
 default:
  return -EINVAL;
 }
}
