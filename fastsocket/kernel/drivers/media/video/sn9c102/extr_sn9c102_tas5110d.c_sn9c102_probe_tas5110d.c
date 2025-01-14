
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int member_0; } ;
struct sn9c102_device {int dummy; } ;


 int ENODEV ;
 int USB_DEVICE (int,int) ;
 int sn9c102_attach_sensor (struct sn9c102_device*,int *) ;
 int sn9c102_match_id (struct sn9c102_device*,struct usb_device_id const*) ;
 int tas5110d ;

int sn9c102_probe_tas5110d(struct sn9c102_device* cam)
{
 const struct usb_device_id tas5110d_id_table[] = {
  { USB_DEVICE(0x0c45, 0x6007), },
  { }
 };

 if (!sn9c102_match_id(cam, tas5110d_id_table))
  return -ENODEV;

 sn9c102_attach_sensor(cam, &tas5110d);

 return 0;
}
