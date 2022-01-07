
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l64781_state {int dummy; } ;
struct dvb_frontend {struct l64781_state* demodulator_priv; } ;


 int l64781_readreg (struct l64781_state*,int) ;

__attribute__((used)) static int l64781_read_snr(struct dvb_frontend* fe, u16* snr)
{
 struct l64781_state* state = fe->demodulator_priv;

 u8 avg_quality = 0xff - l64781_readreg (state, 0x33);
 *snr = (avg_quality << 8) | avg_quality;

 return 0;
}
