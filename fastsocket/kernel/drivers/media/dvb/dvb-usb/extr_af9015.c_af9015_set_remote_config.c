
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int iManufacturer; int idProduct; int idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct TYPE_5__ {void* rc_codes; } ;
struct dvb_usb_device_properties {TYPE_2__ rc_core; } ;
typedef int manufacturer ;
struct TYPE_6__ {int eeprom_sum; } ;


 int AF9015_REMOTE_MSI_DIGIVOX_MINI_II_V3 ;
 void* RC_MAP_EMPTY ;
 int USB_VID_AFATECH ;
 TYPE_3__ af9015_config ;
 int af9015_rc_setup_hashes ;
 void* af9015_rc_setup_match (int,int ) ;
 int af9015_rc_setup_modparam ;
 int af9015_rc_setup_usbids ;
 int dvb_usb_af9015_remote ;
 int le16_to_cpu (int ) ;
 int memset (char*,int ,int) ;
 int strcmp (char*,char*) ;
 int usb_string (struct usb_device*,int ,char*,int) ;

__attribute__((used)) static void af9015_set_remote_config(struct usb_device *udev,
  struct dvb_usb_device_properties *props)
{
 u16 vid = le16_to_cpu(udev->descriptor.idVendor);
 u16 pid = le16_to_cpu(udev->descriptor.idProduct);


 props->rc_core.rc_codes = af9015_rc_setup_match(
  dvb_usb_af9015_remote, af9015_rc_setup_modparam);


 if (!props->rc_core.rc_codes)
  props->rc_core.rc_codes = af9015_rc_setup_match(
   af9015_config.eeprom_sum, af9015_rc_setup_hashes);


 if (!props->rc_core.rc_codes)
  props->rc_core.rc_codes = af9015_rc_setup_match(
   (vid << 16) + pid, af9015_rc_setup_usbids);


 if (!props->rc_core.rc_codes && vid == USB_VID_AFATECH) {




  char manufacturer[10];
  memset(manufacturer, 0, sizeof(manufacturer));
  usb_string(udev, udev->descriptor.iManufacturer,
   manufacturer, sizeof(manufacturer));
  if (!strcmp("MSI", manufacturer)) {


   props->rc_core.rc_codes = af9015_rc_setup_match(
    AF9015_REMOTE_MSI_DIGIVOX_MINI_II_V3,
    af9015_rc_setup_modparam);
  }
 }


 if (!props->rc_core.rc_codes)
  props->rc_core.rc_codes = RC_MAP_EMPTY;

 return;
}
