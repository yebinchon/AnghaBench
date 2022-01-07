
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int dev; int fe; } ;


 int gp8psk_fe_attach (int ) ;

__attribute__((used)) static int gp8psk_frontend_attach(struct dvb_usb_adapter *adap)
{
 adap->fe = gp8psk_fe_attach(adap->dev);
 return 0;
}
