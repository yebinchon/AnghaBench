
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct dvb_usb_device_properties {int dummy; } ;
struct dvb_usb_device_description {int dummy; } ;


 int EIO ;
 int FW_CONFIG ;
 int af9005_boot_packet (struct usb_device*,int ,int*) ;
 int deb_info (char*,int) ;

__attribute__((used)) static int af9005_identify_state(struct usb_device *udev,
     struct dvb_usb_device_properties *props,
     struct dvb_usb_device_description **desc,
     int *cold)
{
 int ret;
 u8 reply;
 ret = af9005_boot_packet(udev, FW_CONFIG, &reply);
 if (ret)
  return ret;
 deb_info("result of FW_CONFIG in identify state %d\n", reply);
 if (reply == 0x01)
  *cold = 1;
 else if (reply == 0x02)
  *cold = 0;
 else
  return -EIO;
 deb_info("Identify state cold = %d\n", *cold);
 return 0;
}
