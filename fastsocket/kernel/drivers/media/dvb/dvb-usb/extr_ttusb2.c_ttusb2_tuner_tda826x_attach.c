
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* dev; int fe; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int ENODEV ;
 int deb_info (char*) ;
 int * dvb_attach (int ,int ,int,int ,int ) ;
 int lnbp21_attach ;
 int tda826x_attach ;

__attribute__((used)) static int ttusb2_tuner_tda826x_attach(struct dvb_usb_adapter *adap)
{
 if (dvb_attach(tda826x_attach, adap->fe, 0x60, &adap->dev->i2c_adap, 0) == ((void*)0)) {
  deb_info("TDA8263 attach failed\n");
  return -ENODEV;
 }

 if (dvb_attach(lnbp21_attach, adap->fe, &adap->dev->i2c_adap, 0, 0) == ((void*)0)) {
  deb_info("LNBP21 attach failed\n");
  return -ENODEV;
 }
 return 0;
}
