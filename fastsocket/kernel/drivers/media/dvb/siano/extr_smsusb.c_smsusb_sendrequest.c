
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsusb_device_t {int udev; } ;
struct SmsMsgHdr_ST {int dummy; } ;


 int smsendian_handle_message_header (struct SmsMsgHdr_ST*) ;
 int usb_bulk_msg (int ,int ,void*,size_t,int*,int) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int smsusb_sendrequest(void *context, void *buffer, size_t size)
{
 struct smsusb_device_t *dev = (struct smsusb_device_t *) context;
 int dummy;

 smsendian_handle_message_header((struct SmsMsgHdr_ST *)buffer);
 return usb_bulk_msg(dev->udev, usb_sndbulkpipe(dev->udev, 2),
       buffer, size, &dummy, 1000);
}
