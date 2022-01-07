
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int last_error; int iface; int dev; } ;


 int EBUSY ;
 int err (char*,char const*) ;
 int usb_set_interface (int ,int ,int) ;

__attribute__((used)) static int ultracam_alternateSetting(struct uvd *uvd, int setting)
{
 static const char proc[] = "ultracam_alternateSetting";
 int i;
 i = usb_set_interface(uvd->dev, uvd->iface, setting);
 if (i < 0) {
  err("%s: usb_set_interface error", proc);
  uvd->last_error = i;
  return -EBUSY;
 }
 return 0;
}
