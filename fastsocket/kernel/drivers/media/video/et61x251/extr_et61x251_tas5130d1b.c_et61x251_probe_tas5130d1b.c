
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int member_0; } ;
struct et61x251_device {int dummy; } ;


 int ENODEV ;
 int USB_DEVICE (int,int) ;
 int et61x251_attach_sensor (struct et61x251_device*,int *) ;
 int et61x251_match_id (struct et61x251_device*,struct usb_device_id const*) ;
 int tas5130d1b ;

int et61x251_probe_tas5130d1b(struct et61x251_device* cam)
{
 const struct usb_device_id tas5130d1b_id_table[] = {
  { USB_DEVICE(0x102c, 0x6251), },
  { }
 };


 if (!et61x251_match_id(cam, tas5130d1b_id_table))
  return -ENODEV;

 et61x251_attach_sensor(cam, &tas5130d1b);

 return 0;
}
