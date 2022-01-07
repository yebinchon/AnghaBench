
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lme2510_state {int tuner_config; } ;
struct dvb_usb_adapter {TYPE_1__* dev; int fe; } ;
struct TYPE_2__ {int udev; int i2c_adap; struct lme2510_state* priv; } ;


 int ENODEV ;


 int dvb_attach (int ,int ,int,int *,...) ;
 int info (char*,...) ;
 int ix2505v_attach ;
 int lme2510_int_service (struct dvb_usb_adapter*) ;
 int lme_coldreset (int ) ;
 int lme_tuner ;
 int tda826x_attach ;

__attribute__((used)) static int dm04_lme2510_tuner(struct dvb_usb_adapter *adap)
{
 struct lme2510_state *st = adap->dev->priv;
 char *tun_msg[] = {"", "TDA8263", "IX2505V"};
 int ret = 0;

 switch (st->tuner_config) {
 case 129:
  if (dvb_attach(tda826x_attach, adap->fe, 0xc0,
   &adap->dev->i2c_adap, 1))
   ret = st->tuner_config;
  break;
 case 128:
  if (dvb_attach(ix2505v_attach , adap->fe, &lme_tuner,
   &adap->dev->i2c_adap))
   ret = st->tuner_config;
  break;
 default:
  break;
 }

 if (ret)
  info("TUN Found %s tuner", tun_msg[ret]);
 else {
  info("TUN No tuner found --- reseting device");
  lme_coldreset(adap->dev->udev);
  return -ENODEV;
 }


 ret = lme2510_int_service(adap);

 return ret;
}
