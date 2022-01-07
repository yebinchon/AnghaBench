
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tda18271_priv {unsigned char* tda18271_regs; int mode; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 size_t R_EB13 ;
 size_t R_EB14 ;
 size_t R_EB20 ;
 size_t R_EB4 ;
 size_t R_EB7 ;
 size_t R_EP1 ;
 size_t R_EP2 ;
 size_t R_EP3 ;
 size_t R_EP4 ;


 int msleep (int) ;
 int tda18271_calc_bp_filter (struct dvb_frontend*,int*) ;
 int tda18271_calc_cal_pll (struct dvb_frontend*,int) ;
 int tda18271_calc_gain_taper (struct dvb_frontend*,int*) ;
 int tda18271_calc_km (struct dvb_frontend*,int*) ;
 int tda18271_calc_main_pll (struct dvb_frontend*,int) ;
 int tda18271_calc_rf_band (struct dvb_frontend*,int*) ;
 scalar_t__ tda18271_calc_rf_cal (struct dvb_frontend*,int*) ;
 int tda18271_write_regs (struct dvb_frontend*,size_t,int) ;
 scalar_t__ tda_fail (int) ;

__attribute__((used)) static int tda18271c1_rf_tracking_filter_calibration(struct dvb_frontend *fe,
           u32 freq, u32 bw)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;
 int ret;
 u32 N = 0;


 tda18271_calc_bp_filter(fe, &freq);
 tda18271_write_regs(fe, R_EP1, 1);

 regs[R_EB4] &= 0x07;
 regs[R_EB4] |= 0x60;
 tda18271_write_regs(fe, R_EB4, 1);

 regs[R_EB7] = 0x60;
 tda18271_write_regs(fe, R_EB7, 1);

 regs[R_EB14] = 0x00;
 tda18271_write_regs(fe, R_EB14, 1);

 regs[R_EB20] = 0xcc;
 tda18271_write_regs(fe, R_EB20, 1);


 regs[R_EP4] |= 0x03;



 switch (priv->mode) {
 case 129:
  N = freq - 1250000;
  break;
 case 128:
  N = freq + bw / 2;
  break;
 }

 tda18271_calc_cal_pll(fe, N);



 switch (priv->mode) {
 case 129:
  N = freq - 250000;
  break;
 case 128:
  N = freq + bw / 2 + 1000000;
  break;
 }

 tda18271_calc_main_pll(fe, N);

 ret = tda18271_write_regs(fe, R_EP3, 11);
 if (tda_fail(ret))
  return ret;

 msleep(5);


 tda18271_calc_km(fe, &freq);
 tda18271_write_regs(fe, R_EB13, 1);


 tda18271_calc_rf_band(fe, &freq);


 tda18271_calc_gain_taper(fe, &freq);

 tda18271_write_regs(fe, R_EP2, 1);
 tda18271_write_regs(fe, R_EP1, 1);
 tda18271_write_regs(fe, R_EP2, 1);
 tda18271_write_regs(fe, R_EP1, 1);

 regs[R_EB4] &= 0x07;
 regs[R_EB4] |= 0x40;
 tda18271_write_regs(fe, R_EB4, 1);

 regs[R_EB7] = 0x40;
 tda18271_write_regs(fe, R_EB7, 1);
 msleep(10);

 regs[R_EB20] = 0xec;
 tda18271_write_regs(fe, R_EB20, 1);
 msleep(60);

 regs[R_EP4] &= ~0x03;
 tda18271_write_regs(fe, R_EP4, 1);

 tda18271_write_regs(fe, R_EP1, 1);


 if (0 == tda18271_calc_rf_cal(fe, &freq))
  tda18271_write_regs(fe, R_EB14, 1);

 return 0;
}
