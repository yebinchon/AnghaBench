
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dst_state* demodulator_priv; } ;
struct dst_state {int decode_snr; } ;


 int dst_get_signal (struct dst_state*) ;

__attribute__((used)) static int dst_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct dst_state *state = fe->demodulator_priv;

 int retval = dst_get_signal(state);
 *snr = state->decode_snr;

 return retval;
}
