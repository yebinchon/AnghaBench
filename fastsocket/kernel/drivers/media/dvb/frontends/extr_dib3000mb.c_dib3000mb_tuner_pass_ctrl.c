
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;


 int DIB3000MB_REG_TUNER ;
 int DIB3000_TUNER_WRITE_DISABLE (int ) ;
 int DIB3000_TUNER_WRITE_ENABLE (int ) ;
 int wr (int ,int ) ;

__attribute__((used)) static int dib3000mb_tuner_pass_ctrl(struct dvb_frontend *fe, int onoff, u8 pll_addr)
{
 struct dib3000_state *state = fe->demodulator_priv;
 if (onoff) {
  wr(DIB3000MB_REG_TUNER, DIB3000_TUNER_WRITE_ENABLE(pll_addr));
 } else {
  wr(DIB3000MB_REG_TUNER, DIB3000_TUNER_WRITE_DISABLE(pll_addr));
 }
 return 0;
}
