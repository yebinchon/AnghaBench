
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct dvb_usb_device_properties {int dummy; } ;
struct dvb_usb_device_description {int dummy; } ;


 int lme2510_return_status (struct usb_device*) ;

__attribute__((used)) static int lme2510_identify_state(struct usb_device *udev,
  struct dvb_usb_device_properties *props,
  struct dvb_usb_device_description **desc,
  int *cold)
{
 if (lme2510_return_status(udev) == 0x44)
  *cold = 1;
 else
  *cold = 0;
 return 0;
}
