
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asus_backlight_device ;
 int backlight_device_unregister (scalar_t__) ;

__attribute__((used)) static void asus_backlight_exit(void)
{
 if (asus_backlight_device)
  backlight_device_unregister(asus_backlight_device);
}
