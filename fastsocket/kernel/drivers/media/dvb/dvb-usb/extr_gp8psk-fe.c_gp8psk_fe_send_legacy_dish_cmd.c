
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gp8psk_fe_state {int d; } ;
struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; } ;


 int EINVAL ;
 int SET_DN_SWITCH ;
 int SET_LNB_VOLTAGE ;
 scalar_t__ gp8psk_usb_out_op (int ,int ,int,int ,int *,int ) ;

__attribute__((used)) static int gp8psk_fe_send_legacy_dish_cmd (struct dvb_frontend* fe, unsigned long sw_cmd)
{
 struct gp8psk_fe_state* state = fe->demodulator_priv;
 u8 cmd = sw_cmd & 0x7f;

 if (gp8psk_usb_out_op(state->d,SET_DN_SWITCH, cmd, 0,
   ((void*)0), 0)) {
  return -EINVAL;
 }
 if (gp8psk_usb_out_op(state->d,SET_LNB_VOLTAGE, !!(sw_cmd & 0x80),
   0, ((void*)0), 0)) {
  return -EINVAL;
 }

 return 0;
}
