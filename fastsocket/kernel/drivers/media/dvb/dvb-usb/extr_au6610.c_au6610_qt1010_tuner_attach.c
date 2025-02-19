
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* dev; int fe; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int ENODEV ;
 int au6610_qt1010_config ;
 int * dvb_attach (int ,int ,int *,int *) ;
 int qt1010_attach ;

__attribute__((used)) static int au6610_qt1010_tuner_attach(struct dvb_usb_adapter *adap)
{
 return dvb_attach(qt1010_attach,
     adap->fe, &adap->dev->i2c_adap,
     &au6610_qt1010_config) == ((void*)0) ? -ENODEV : 0;
}
