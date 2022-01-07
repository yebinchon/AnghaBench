
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* dev; TYPE_2__* fe; } ;
struct TYPE_4__ {int callback; } ;
struct TYPE_3__ {int i2c_adap; } ;


 int ENODEV ;
 int dib0700_xc5000_tuner_callback ;
 int * dvb_attach (int ,TYPE_2__*,int *,int *) ;
 int s5h1411_xc5000_tunerconfig ;
 int xc5000_attach ;

__attribute__((used)) static int xc5000_tuner_attach(struct dvb_usb_adapter *adap)
{

 adap->fe->callback = dib0700_xc5000_tuner_callback;

 return dvb_attach(xc5000_attach, adap->fe, &adap->dev->i2c_adap,
     &s5h1411_xc5000_tunerconfig)
  == ((void*)0) ? -ENODEV : 0;
}
