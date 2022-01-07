
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;


 int EINVAL ;
 int THIS_MODULE ;
 int adapter_nr ;
 int cxusb_aver_a868r_properties ;
 int cxusb_bluebird_dee1601_properties ;
 int cxusb_bluebird_dtt7579_properties ;
 int cxusb_bluebird_dualdig4_properties ;
 int cxusb_bluebird_dualdig4_rev2_properties ;
 int cxusb_bluebird_lgh064f_properties ;
 int cxusb_bluebird_lgz201_properties ;
 int cxusb_bluebird_nano2_needsfirmware_properties ;
 int cxusb_bluebird_nano2_properties ;
 int cxusb_d680_dmb_properties ;
 int cxusb_medion_properties ;
 int cxusb_mygica_d689_properties ;
 scalar_t__ dvb_usb_device_init (struct usb_interface*,int *,int ,int *,int ) ;

__attribute__((used)) static int cxusb_probe(struct usb_interface *intf,
         const struct usb_device_id *id)
{
 if (0 == dvb_usb_device_init(intf, &cxusb_medion_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &cxusb_bluebird_lgh064f_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &cxusb_bluebird_dee1601_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &cxusb_bluebird_lgz201_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &cxusb_bluebird_dtt7579_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &cxusb_bluebird_dualdig4_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &cxusb_bluebird_nano2_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf,
    &cxusb_bluebird_nano2_needsfirmware_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &cxusb_aver_a868r_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf,
         &cxusb_bluebird_dualdig4_rev2_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &cxusb_d680_dmb_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &cxusb_mygica_d689_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0)
  return 0;

 return -EINVAL;
}
