
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_stv {TYPE_3__* udev; } ;
struct TYPE_7__ {TYPE_2__* actconfig; } ;
struct TYPE_5__ {int bConfigurationValue; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;


 int PDEBUG (int,char*,int) ;
 scalar_t__ usb_reset_configuration (TYPE_3__*) ;
 scalar_t__ usb_set_interface (TYPE_3__*,int,int) ;

__attribute__((used)) static int stv_set_config (struct usb_stv *dev, int configuration, int interface, int alternate)
{

 if (configuration != dev->udev->actconfig->desc.bConfigurationValue
   || usb_reset_configuration (dev->udev) < 0) {
  PDEBUG (1, "STV(e): FAILED to reset configuration %i", configuration);
  return -1;
 }
 if (usb_set_interface (dev->udev, interface, alternate) < 0) {
  PDEBUG (1, "STV(e): FAILED to set alternate interface %i", alternate);
  return -1;
 }
 return 0;
}
