
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gp8psk_fe_state {int snr; } ;
struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; } ;


 int gp8psk_fe_update_status (struct gp8psk_fe_state*) ;

__attribute__((used)) static int gp8psk_fe_read_signal_strength(struct dvb_frontend* fe, u16 *strength)
{
 struct gp8psk_fe_state *st = fe->demodulator_priv;
 gp8psk_fe_update_status(st);



 if (st->snr > 0xf00)
  *strength = 0xffff;
 else
  *strength = (st->snr << 4) + st->snr;
 return 0;
}
