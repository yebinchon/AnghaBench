
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* dev; int fe; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int TUNER_PHILIPS_FMD1216ME_MK3 ;
 int dvb_attach (int ,int ,int *,int,int ) ;
 int simple_tuner_attach ;

__attribute__((used)) static int cxusb_fmd1216me_tuner_attach(struct dvb_usb_adapter *adap)
{
 dvb_attach(simple_tuner_attach, adap->fe,
     &adap->dev->i2c_adap, 0x61,
     TUNER_PHILIPS_FMD1216ME_MK3);
 return 0;
}
