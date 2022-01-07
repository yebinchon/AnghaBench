
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ibm_backlight_device ;
 int tpacpi_brightness_notify_change () ;

__attribute__((used)) static void tpacpi_driver_event(const unsigned int hkey_event)
{
 if (ibm_backlight_device) {
  switch (hkey_event) {
  case 128:
  case 129:
   tpacpi_brightness_notify_change();
  }
 }
}
