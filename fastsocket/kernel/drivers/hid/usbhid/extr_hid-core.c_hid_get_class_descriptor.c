
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_GET_DESCRIPTOR ;
 int memset (void*,int ,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,unsigned char,int,void*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int hid_get_class_descriptor(struct usb_device *dev, int ifnum,
  unsigned char type, void *buf, int size)
{
 int result, retries = 4;

 memset(buf, 0, size);

 do {
  result = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
    USB_REQ_GET_DESCRIPTOR, USB_RECIP_INTERFACE | USB_DIR_IN,
    (type << 8), ifnum, buf, size, USB_CTRL_GET_TIMEOUT);
  retries--;
 } while (result < size && retries);
 return result;
}
