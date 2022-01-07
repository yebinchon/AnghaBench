
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct dvb_usb_device_properties {int dummy; } ;
struct TYPE_12__ {char* firmware; TYPE_1__* adapter; int rc_key_map_size; int rc_key_map; int * devices; } ;
struct TYPE_11__ {int frontend_attach; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int adapter_nr ;
 int d7500 ;
 scalar_t__ dvb_usb_device_init (struct usb_interface*,TYPE_2__*,int ,int *,int ) ;
 TYPE_2__ dw2102_properties ;
 TYPE_2__ dw2104_properties ;
 TYPE_2__ dw3101_properties ;
 TYPE_2__* kzalloc (int,int ) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 TYPE_2__* p7500 ;
 int prof_7500_frontend_attach ;
 int rc_map_tbs_table ;
 TYPE_2__ s6x0_properties ;

__attribute__((used)) static int dw2102_probe(struct usb_interface *intf,
  const struct usb_device_id *id)
{

 p7500 = kzalloc(sizeof(struct dvb_usb_device_properties), GFP_KERNEL);
 if (!p7500)
  return -ENOMEM;

 memcpy(p7500, &s6x0_properties,
   sizeof(struct dvb_usb_device_properties));

 p7500->firmware = "dvb-usb-p7500.fw";
 p7500->devices[0] = d7500;
 p7500->rc_key_map = rc_map_tbs_table;
 p7500->rc_key_map_size = ARRAY_SIZE(rc_map_tbs_table);
 p7500->adapter->frontend_attach = prof_7500_frontend_attach;

 if (0 == dvb_usb_device_init(intf, &dw2102_properties,
   THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &dw2104_properties,
   THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &dw3101_properties,
   THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &s6x0_properties,
   THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, p7500,
   THIS_MODULE, ((void*)0), adapter_nr))
  return 0;

 return -ENODEV;
}
