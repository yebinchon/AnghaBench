
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct m920x_inits {int dummy; } ;
struct dvb_usb_device {int dummy; } ;
struct TYPE_3__ {int bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int THIS_MODULE ;
 int adapter_nr ;
 int deb (char*,int) ;
 int digivox_mini_ii_properties ;
 int dposh_properties ;
 int dvb_usb_device_init (struct usb_interface*,int *,int ,struct dvb_usb_device**,int ) ;
 int m920x_init (struct dvb_usb_device*,struct m920x_inits*) ;
 int m920x_init_ep (struct usb_interface*) ;
 int megasky_properties ;
 struct m920x_inits* megasky_rc_init ;
 struct m920x_inits* pinnacle310e_init ;
 int pinnacle_pctv310e_properties ;
 int tvwalkertwin_properties ;
 struct m920x_inits* tvwalkertwin_rc_init ;

__attribute__((used)) static int m920x_probe(struct usb_interface *intf,
         const struct usb_device_id *id)
{
 struct dvb_usb_device *d = ((void*)0);
 int ret;
 struct m920x_inits *rc_init_seq = ((void*)0);
 int bInterfaceNumber = intf->cur_altsetting->desc.bInterfaceNumber;

 deb("Probing for m920x device at interface %d\n", bInterfaceNumber);

 if (bInterfaceNumber == 0) {




  ret = dvb_usb_device_init(intf, &megasky_properties,
       THIS_MODULE, &d, adapter_nr);
  if (ret == 0) {
   rc_init_seq = megasky_rc_init;
   goto found;
  }

  ret = dvb_usb_device_init(intf, &digivox_mini_ii_properties,
       THIS_MODULE, &d, adapter_nr);
  if (ret == 0) {

   goto found;
  }


  ret = dvb_usb_device_init(intf, &tvwalkertwin_properties,
       THIS_MODULE, &d, adapter_nr);
  if (ret == 0) {
   rc_init_seq = tvwalkertwin_rc_init;
   goto found;
  }

  ret = dvb_usb_device_init(intf, &dposh_properties,
       THIS_MODULE, &d, adapter_nr);
  if (ret == 0) {

   goto found;
  }

  ret = dvb_usb_device_init(intf, &pinnacle_pctv310e_properties,
       THIS_MODULE, &d, adapter_nr);
  if (ret == 0) {
   rc_init_seq = pinnacle310e_init;
   goto found;
  }

  return ret;
 } else {






 }

 found:
 if ((ret = m920x_init_ep(intf)) < 0)
  return ret;

 if (d && (ret = m920x_init(d, rc_init_seq)) != 0)
  return ret;

 return ret;
}
