
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct dvb_usb_device {int udev; } ;


 int ENODEV ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int deb_rc (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int dvb_usb_nec_rc_key_to_event (struct dvb_usb_device*,scalar_t__*,int *,int*) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,scalar_t__*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int a800_rc_query(struct dvb_usb_device *d, u32 *event, int *state)
{
 u8 key[5];
 if (usb_control_msg(d->udev,usb_rcvctrlpipe(d->udev,0),
    0x04, USB_TYPE_VENDOR | USB_DIR_IN, 0, 0, key, 5,
    2000) != 5)
  return -ENODEV;


 dvb_usb_nec_rc_key_to_event(d,key,event,state);
 if (key[0] != 0)
  deb_rc("key: %x %x %x %x %x\n",key[0],key[1],key[2],key[3],key[4]);
 return 0;
}
