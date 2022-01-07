
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct lgdt330x_state {int snr; } ;
struct TYPE_2__ {int (* read_snr ) (struct dvb_frontend*,int*) ;} ;
struct dvb_frontend {TYPE_1__ ops; scalar_t__ demodulator_priv; } ;


 int stub1 (struct dvb_frontend*,int*) ;

__attribute__((used)) static int lgdt330x_read_signal_strength(struct dvb_frontend* fe, u16* strength)
{



 struct lgdt330x_state* state = (struct lgdt330x_state*) fe->demodulator_priv;
 u16 snr;
 int ret;

 ret = fe->ops.read_snr(fe, &snr);
 if (ret != 0)
  return ret;


 if (state->snr >= 8960 * 0x10000)
  *strength = 0xffff;
 else
  *strength = state->snr / 8960;

 return 0;
}
