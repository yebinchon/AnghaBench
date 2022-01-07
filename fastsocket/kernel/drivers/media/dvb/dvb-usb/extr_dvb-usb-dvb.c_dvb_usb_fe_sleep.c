
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {int dev; int (* fe_sleep ) (struct dvb_frontend*) ;} ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_2__ {struct dvb_usb_adapter* priv; } ;


 int dvb_usb_device_power_ctrl (int ,int ) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static int dvb_usb_fe_sleep(struct dvb_frontend *fe)
{
 struct dvb_usb_adapter *adap = fe->dvb->priv;

 if (adap->fe_sleep)
  adap->fe_sleep(fe);

 return dvb_usb_device_power_ctrl(adap->dev, 0);
}
