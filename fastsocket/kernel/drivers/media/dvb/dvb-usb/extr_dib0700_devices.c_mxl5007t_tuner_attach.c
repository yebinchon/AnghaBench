
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* dev; int fe; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int ENODEV ;
 int * dvb_attach (int ,int ,int *,int,int *) ;
 int hcw_mxl5007t_config ;
 int mxl5007t_attach ;

__attribute__((used)) static int mxl5007t_tuner_attach(struct dvb_usb_adapter *adap)
{
 return dvb_attach(mxl5007t_attach, adap->fe,
     &adap->dev->i2c_adap, 0x60,
     &hcw_mxl5007t_config) == ((void*)0) ? -ENODEV : 0;
}
