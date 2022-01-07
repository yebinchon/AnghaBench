
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;




 int usbhid_get_power (struct hid_device*) ;
 int usbhid_put_power (struct hid_device*) ;

__attribute__((used)) static int usbhid_power(struct hid_device *hid, int lvl)
{
 int r = 0;

 switch (lvl) {
 case 129:
  r = usbhid_get_power(hid);
  break;
 case 128:
  usbhid_put_power(hid);
  break;
 }
 return r;
}
