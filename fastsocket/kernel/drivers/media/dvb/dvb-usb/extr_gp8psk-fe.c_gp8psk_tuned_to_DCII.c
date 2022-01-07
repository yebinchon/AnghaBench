
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gp8psk_fe_state {int d; } ;
struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; } ;


 int GET_8PSK_CONFIG ;
 int bmDCtuned ;
 int gp8psk_usb_in_op (int ,int ,int ,int ,int*,int) ;

__attribute__((used)) static int gp8psk_tuned_to_DCII(struct dvb_frontend *fe)
{
 struct gp8psk_fe_state *st = fe->demodulator_priv;
 u8 status;
 gp8psk_usb_in_op(st->d, GET_8PSK_CONFIG, 0, 0, &status, 1);
 return status & bmDCtuned;
}
