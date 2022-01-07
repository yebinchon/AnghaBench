
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct af9013_state* demodulator_priv; } ;
struct af9013_state {int snr; } ;


 int af9013_update_statistics (struct dvb_frontend*) ;

__attribute__((used)) static int af9013_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct af9013_state *state = fe->demodulator_priv;
 int ret;
 ret = af9013_update_statistics(fe);
 *snr = state->snr;
 return ret;
}
