
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int * fe; int dev; } ;


 int EIO ;
 scalar_t__ friio_initialize (int ) ;
 int * jdvbt90502_attach (int ) ;

__attribute__((used)) static int friio_frontend_attach(struct dvb_usb_adapter *adap)
{
 if (friio_initialize(adap->dev) < 0)
  return -EIO;

 adap->fe = jdvbt90502_attach(adap->dev);
 if (adap->fe == ((void*)0))
  return -EIO;

 return 0;
}
