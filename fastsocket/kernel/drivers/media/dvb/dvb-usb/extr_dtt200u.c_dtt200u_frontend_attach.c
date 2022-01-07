
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int dev; int fe; } ;


 int dtt200u_fe_attach (int ) ;

__attribute__((used)) static int dtt200u_frontend_attach(struct dvb_usb_adapter *adap)
{
 adap->fe = dtt200u_fe_attach(adap->dev);
 return 0;
}
