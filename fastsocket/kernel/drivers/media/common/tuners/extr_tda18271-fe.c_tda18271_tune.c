
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tda18271_std_map_item {int std; int agc_mode; int if_freq; } ;
struct tda18271_priv {int id; int lock; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;




 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tda18271_agc (struct dvb_frontend*) ;
 int tda18271_channel_configuration (struct dvb_frontend*,struct tda18271_std_map_item*,int ,int ) ;
 int tda18271_init (struct dvb_frontend*) ;
 int tda18271c1_rf_tracking_filter_calibration (struct dvb_frontend*,int ,int ) ;
 int tda18271c2_rf_tracking_filters_correction (struct dvb_frontend*,int ) ;
 int tda_dbg (char*,int ,int ,int ,int ,int ) ;
 scalar_t__ tda_fail (int) ;
 int tda_warn (char*) ;

__attribute__((used)) static int tda18271_tune(struct dvb_frontend *fe,
    struct tda18271_std_map_item *map, u32 freq, u32 bw)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 int ret;

 tda_dbg("freq = %d, ifc = %d, bw = %d, agc_mode = %d, std = %d\n",
  freq, map->if_freq, bw, map->agc_mode, map->std);

 ret = tda18271_agc(fe);
 if (tda_fail(ret))
  tda_warn("failed to configure agc\n");

 ret = tda18271_init(fe);
 if (tda_fail(ret))
  goto fail;

 mutex_lock(&priv->lock);

 switch (priv->id) {
 case 129:
  tda18271c1_rf_tracking_filter_calibration(fe, freq, bw);
  break;
 case 128:
  tda18271c2_rf_tracking_filters_correction(fe, freq);
  break;
 }
 ret = tda18271_channel_configuration(fe, map, freq, bw);

 mutex_unlock(&priv->lock);
fail:
 return ret;
}
