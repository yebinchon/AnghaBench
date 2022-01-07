
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct tda18271_priv {unsigned char* tda18271_regs; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 size_t R_EB10 ;
 size_t R_EB14 ;
 size_t R_EP2 ;
 size_t R_EP4 ;
 size_t R_MPD ;
 int msleep (int) ;
 int tda18271_calc_gain_taper (struct dvb_frontend*,scalar_t__*) ;
 int tda18271_calc_main_pll (struct dvb_frontend*,scalar_t__) ;
 int tda18271_calc_rf_band (struct dvb_frontend*,scalar_t__*) ;
 int tda18271_calc_rf_cal (struct dvb_frontend*,scalar_t__*) ;
 int tda18271_lookup_cid_target (struct dvb_frontend*,scalar_t__*,unsigned char*,int*) ;
 int tda18271_read_extended (struct dvb_frontend*) ;
 int tda18271_write_regs (struct dvb_frontend*,size_t,int) ;
 int tda_cal (char*,int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ tda_fail (int) ;
 int udelay (int) ;

__attribute__((used)) static int tda18271_powerscan(struct dvb_frontend *fe,
         u32 *freq_in, u32 *freq_out)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;
 int sgn, bcal, count, wait, ret;
 u8 cid_target;
 u16 count_limit;
 u32 freq;

 freq = *freq_in;

 tda18271_calc_rf_band(fe, &freq);
 tda18271_calc_rf_cal(fe, &freq);
 tda18271_calc_gain_taper(fe, &freq);
 tda18271_lookup_cid_target(fe, &freq, &cid_target, &count_limit);

 tda18271_write_regs(fe, R_EP2, 1);
 tda18271_write_regs(fe, R_EB14, 1);


 freq += 1000000;

 tda18271_calc_main_pll(fe, freq);
 tda18271_write_regs(fe, R_MPD, 4);

 msleep(5);


 regs[R_EP4] &= ~0x03;
 regs[R_EP4] |= 0x01;
 tda18271_write_regs(fe, R_EP4, 1);


 tda18271_write_regs(fe, R_EP2, 1);


 ret = tda18271_read_extended(fe);
 if (tda_fail(ret))
  return ret;


 sgn = 1;
 *freq_out = *freq_in;
 bcal = 0;
 count = 0;
 wait = 0;

 while ((regs[R_EB10] & 0x3f) < cid_target) {

  freq = *freq_in + (sgn * count) + 1000000;

  tda18271_calc_main_pll(fe, freq);
  tda18271_write_regs(fe, R_MPD, 4);

  if (wait) {
   msleep(5);
   wait = 0;
  } else
   udelay(100);


  tda18271_write_regs(fe, R_EP2, 1);


  ret = tda18271_read_extended(fe);
  if (tda_fail(ret))
   return ret;

  count += 200;

  if (count <= count_limit)
   continue;

  if (sgn <= 0)
   break;

  sgn = -1 * sgn;
  count = 200;
  wait = 1;
 }

 if ((regs[R_EB10] & 0x3f) >= cid_target) {
  bcal = 1;
  *freq_out = freq - 1000000;
 } else
  bcal = 0;

 tda_cal("bcal = %d, freq_in = %d, freq_out = %d (freq = %d)\n",
  bcal, *freq_in, *freq_out, freq);

 return bcal;
}
