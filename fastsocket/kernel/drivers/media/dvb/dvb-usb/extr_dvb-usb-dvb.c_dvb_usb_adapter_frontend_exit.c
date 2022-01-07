
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int * fe; } ;


 int dvb_frontend_detach (int *) ;
 int dvb_unregister_frontend (int *) ;

int dvb_usb_adapter_frontend_exit(struct dvb_usb_adapter *adap)
{
 if (adap->fe != ((void*)0)) {
  dvb_unregister_frontend(adap->fe);
  dvb_frontend_detach(adap->fe);
 }
 return 0;
}
