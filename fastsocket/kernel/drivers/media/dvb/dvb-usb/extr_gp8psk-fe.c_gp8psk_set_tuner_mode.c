
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gp8psk_fe_state {int d; } ;
struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; } ;


 int SET_8PSK_CONFIG ;
 int gp8psk_usb_out_op (int ,int ,int,int ,int *,int ) ;

__attribute__((used)) static int gp8psk_set_tuner_mode(struct dvb_frontend *fe, int mode)
{
 struct gp8psk_fe_state *state = fe->demodulator_priv;
 return gp8psk_usb_out_op(state->d, SET_8PSK_CONFIG, mode, 0, ((void*)0), 0);
}
