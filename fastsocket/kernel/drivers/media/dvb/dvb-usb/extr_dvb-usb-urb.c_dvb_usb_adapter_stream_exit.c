
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int stream; } ;


 int usb_urb_exit (int *) ;

int dvb_usb_adapter_stream_exit(struct dvb_usb_adapter *adap)
{
 return usb_urb_exit(&adap->stream);
}
