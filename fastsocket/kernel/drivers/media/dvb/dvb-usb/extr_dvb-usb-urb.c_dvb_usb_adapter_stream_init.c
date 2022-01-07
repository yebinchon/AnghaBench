
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int caps; int stream; } ;
struct TYPE_6__ {struct dvb_usb_adapter* user_priv; int complete; int udev; } ;
struct dvb_usb_adapter {TYPE_2__ props; TYPE_3__ stream; TYPE_1__* dev; } ;
struct TYPE_4__ {int udev; } ;


 int DVB_USB_ADAP_RECEIVES_204_BYTE_TS ;
 int dvb_usb_data_complete ;
 int dvb_usb_data_complete_204 ;
 int usb_urb_init (TYPE_3__*,int *) ;

int dvb_usb_adapter_stream_init(struct dvb_usb_adapter *adap)
{
 adap->stream.udev = adap->dev->udev;
 if (adap->props.caps & DVB_USB_ADAP_RECEIVES_204_BYTE_TS)
  adap->stream.complete = dvb_usb_data_complete_204;
 else
 adap->stream.complete = dvb_usb_data_complete;
 adap->stream.user_priv = adap;
 return usb_urb_init(&adap->stream, &adap->props.stream);
}
