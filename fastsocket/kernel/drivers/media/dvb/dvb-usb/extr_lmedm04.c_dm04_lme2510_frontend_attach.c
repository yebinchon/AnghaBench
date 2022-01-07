
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lme2510_state {int i2c_talk_onoff; int i2c_gate; int i2c_tuner_gate_w; int i2c_tuner_gate_r; int i2c_tuner_addr; int tuner_config; } ;
struct dvb_usb_adapter {TYPE_3__* fe; TYPE_1__* dev; } ;
struct TYPE_5__ {int set_voltage; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int udev; int i2c_adap; struct lme2510_state* priv; } ;


 int ENODEV ;
 int TUNER_LG ;
 int TUNER_S7395 ;
 int dm04_lme2510_set_voltage ;
 void* dvb_attach (int ,int *,int *) ;
 int dvb_usb_lme2510_firmware ;
 int info (char*) ;
 int kfree (TYPE_3__*) ;
 int lme_config ;
 int lme_firmware_switch (int ,int) ;
 int lme_name (struct dvb_usb_adapter*) ;
 int stv0288_attach ;
 int tda10086_attach ;
 int tda10086_config ;

__attribute__((used)) static int dm04_lme2510_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct lme2510_state *st = adap->dev->priv;

 int ret = 0;

 st->i2c_talk_onoff = 1;

 st->i2c_gate = 4;
 adap->fe = dvb_attach(tda10086_attach, &tda10086_config,
  &adap->dev->i2c_adap);

 if (adap->fe) {
  info("TUN Found Frontend TDA10086");
  st->i2c_tuner_gate_w = 4;
  st->i2c_tuner_gate_r = 4;
  st->i2c_tuner_addr = 0xc0;
  st->tuner_config = TUNER_LG;
  if (dvb_usb_lme2510_firmware != 1) {
   dvb_usb_lme2510_firmware = 1;
   ret = lme_firmware_switch(adap->dev->udev, 1);
  } else
   dvb_usb_lme2510_firmware = 0;
  goto end;
 }

 st->i2c_gate = 5;
 adap->fe = dvb_attach(stv0288_attach, &lme_config,
   &adap->dev->i2c_adap);

 if (adap->fe) {
  info("FE Found Stv0288");
  st->i2c_tuner_gate_w = 4;
  st->i2c_tuner_gate_r = 5;
  st->i2c_tuner_addr = 0xc0;
  st->tuner_config = TUNER_S7395;
  if (dvb_usb_lme2510_firmware != 0) {
   dvb_usb_lme2510_firmware = 0;
   ret = lme_firmware_switch(adap->dev->udev, 1);
  }
 } else {
  info("DM04 Not Supported");
  return -ENODEV;
 }

end: if (ret) {
  kfree(adap->fe);
  adap->fe = ((void*)0);
  return -ENODEV;
 }

 adap->fe->ops.set_voltage = dm04_lme2510_set_voltage;
 ret = lme_name(adap);

 return ret;
}
