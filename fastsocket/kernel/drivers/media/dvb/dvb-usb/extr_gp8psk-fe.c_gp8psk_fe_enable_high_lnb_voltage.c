
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gp8psk_fe_state {int d; } ;
struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; } ;


 int USE_EXTRA_VOLT ;
 int gp8psk_usb_out_op (int ,int ,long,int ,int *,int ) ;

__attribute__((used)) static int gp8psk_fe_enable_high_lnb_voltage(struct dvb_frontend* fe, long onoff)
{
 struct gp8psk_fe_state* state = fe->demodulator_priv;
 return gp8psk_usb_out_op(state->d, USE_EXTRA_VOLT, onoff, 0,((void*)0),0);
}
