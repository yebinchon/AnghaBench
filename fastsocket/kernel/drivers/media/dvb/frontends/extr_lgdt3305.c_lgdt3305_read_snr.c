
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct lgdt3305_state {int current_modulation; int snr; } ;
struct dvb_frontend {struct lgdt3305_state* demodulator_priv; } ;


 int EINVAL ;
 int LGDT3305_CR_MSE_1 ;
 int LGDT3305_CR_MSE_2 ;
 int LGDT3305_EQ_MSE_1 ;
 int LGDT3305_EQ_MSE_2 ;
 int LGDT3305_EQ_MSE_3 ;
 int LGDT3305_PT_MSE_1 ;
 int LGDT3305_PT_MSE_2 ;
 int LGDT3305_PT_MSE_3 ;



 int calculate_snr (int,int) ;
 int lg_dbg (char*,int,int,int) ;
 int read_reg (struct lgdt3305_state*,int ) ;

__attribute__((used)) static int lgdt3305_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct lgdt3305_state *state = fe->demodulator_priv;
 u32 noise;
 u32 c;

 switch (state->current_modulation) {
 case 128:
  noise = ((read_reg(state, LGDT3305_EQ_MSE_1) & 0x0f) << 16) |
   (read_reg(state, LGDT3305_EQ_MSE_2) << 8) |
   (read_reg(state, LGDT3305_EQ_MSE_3) & 0xff);
  c = 73957994;

  break;
 case 129:
 case 130:
  noise = (read_reg(state, LGDT3305_CR_MSE_1) << 8) |
   (read_reg(state, LGDT3305_CR_MSE_2) & 0xff);

  c = (state->current_modulation == 129) ?
   97939837 : 98026066;

  break;
 default:
  return -EINVAL;
 }
 state->snr = calculate_snr(noise, c);

 *snr = (state->snr / ((1 << 24) / 10));
 lg_dbg("noise = 0x%08x, snr = %d.%02d dB\n", noise,
        state->snr >> 24, (((state->snr >> 8) & 0xffff) * 100) >> 16);

 return 0;
}
