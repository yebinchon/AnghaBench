
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {int * fe; TYPE_1__* dev; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int ENODEV ;
 int dib8000_attach ;
 int dib8000_i2c_enumeration (int *,int,int,int) ;
 int * dib807x_dib8000_config ;
 int * dvb_attach (int ,int *,int,int *) ;

__attribute__((used)) static int stk807xpvr_frontend_attach1(struct dvb_usb_adapter *adap)
{

 dib8000_i2c_enumeration(&adap->dev->i2c_adap, 1, 0x12, 0x82);

 adap->fe = dvb_attach(dib8000_attach, &adap->dev->i2c_adap, 0x82,
         &dib807x_dib8000_config[1]);

 return adap->fe == ((void*)0) ? -ENODEV : 0;
}
