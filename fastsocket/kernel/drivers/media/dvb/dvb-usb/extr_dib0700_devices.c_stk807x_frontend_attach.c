
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {int * fe; TYPE_1__* dev; } ;
struct TYPE_3__ {int i2c_adap; } ;


 int ENODEV ;
 int GPIO0 ;
 int GPIO10 ;
 int GPIO4 ;
 int GPIO6 ;
 int GPIO7 ;
 int GPIO9 ;
 int GPIO_OUT ;
 int dib0700_ctrl_clock (TYPE_1__*,int,int) ;
 int dib0700_set_gpio (TYPE_1__*,int ,int ,int) ;
 int dib8000_attach ;
 int dib8000_i2c_enumeration (int *,int,int,int) ;
 int * dib807x_dib8000_config ;
 int * dvb_attach (int ,int *,int,int *) ;
 int msleep (int) ;

__attribute__((used)) static int stk807x_frontend_attach(struct dvb_usb_adapter *adap)
{
 dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 1);
 msleep(10);
 dib0700_set_gpio(adap->dev, GPIO9, GPIO_OUT, 1);
 dib0700_set_gpio(adap->dev, GPIO4, GPIO_OUT, 1);
 dib0700_set_gpio(adap->dev, GPIO7, GPIO_OUT, 1);

 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 0);

 dib0700_ctrl_clock(adap->dev, 72, 1);

 msleep(10);
 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 1);
 msleep(10);
 dib0700_set_gpio(adap->dev, GPIO0, GPIO_OUT, 1);

 dib8000_i2c_enumeration(&adap->dev->i2c_adap, 1, 18,
    0x80);

 adap->fe = dvb_attach(dib8000_attach, &adap->dev->i2c_adap, 0x80,
         &dib807x_dib8000_config[0]);

 return adap->fe == ((void*)0) ? -ENODEV : 0;
}
