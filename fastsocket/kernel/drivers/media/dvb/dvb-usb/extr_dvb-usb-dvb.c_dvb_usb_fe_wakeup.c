
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {int (* fe_init ) (struct dvb_frontend*) ;int dev; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_2__ {struct dvb_usb_adapter* priv; } ;


 int dvb_usb_device_power_ctrl (int ,int) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static int dvb_usb_fe_wakeup(struct dvb_frontend *fe)
{
 struct dvb_usb_adapter *adap = fe->dvb->priv;

 dvb_usb_device_power_ctrl(adap->dev, 1);

 if (adap->fe_init)
  adap->fe_init(fe);

 return 0;
}
