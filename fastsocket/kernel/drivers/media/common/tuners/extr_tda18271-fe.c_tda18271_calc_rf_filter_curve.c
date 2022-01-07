
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tda18271_priv {int tm_rfcal; TYPE_1__* rf_cal_state; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;
struct TYPE_2__ {int rfmax; } ;


 int msleep (int) ;
 int tda18271_powerscan_init (struct dvb_frontend*) ;
 int tda18271_read_thermometer (struct dvb_frontend*) ;
 int tda18271_rf_tracking_filters_init (struct dvb_frontend*,int) ;
 scalar_t__ tda_fail (int) ;
 int tda_info (char*) ;

__attribute__((used)) static int tda18271_calc_rf_filter_curve(struct dvb_frontend *fe)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned int i;
 int ret;

 tda_info("tda18271: performing RF tracking filter calibration\n");


 msleep(200);

 ret = tda18271_powerscan_init(fe);
 if (tda_fail(ret))
  goto fail;


 for (i = 0; priv->rf_cal_state[i].rfmax != 0; i++) {
  ret =
  tda18271_rf_tracking_filters_init(fe, 1000 *
        priv->rf_cal_state[i].rfmax);
  if (tda_fail(ret))
   goto fail;
 }

 priv->tm_rfcal = tda18271_read_thermometer(fe);
fail:
 return ret;
}
