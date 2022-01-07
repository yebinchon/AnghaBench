
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gp8psk_fe_state {int d; } ;
struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; } ;
typedef scalar_t__ fe_sec_voltage_t ;


 int EINVAL ;
 scalar_t__ SEC_VOLTAGE_18 ;
 int SET_LNB_VOLTAGE ;
 scalar_t__ gp8psk_usb_out_op (int ,int ,int,int ,int *,int ) ;

__attribute__((used)) static int gp8psk_fe_set_voltage (struct dvb_frontend* fe, fe_sec_voltage_t voltage)
{
 struct gp8psk_fe_state* state = fe->demodulator_priv;

 if (gp8psk_usb_out_op(state->d,SET_LNB_VOLTAGE,
    voltage == SEC_VOLTAGE_18, 0, ((void*)0), 0)) {
  return -EINVAL;
 }
 return 0;
}
