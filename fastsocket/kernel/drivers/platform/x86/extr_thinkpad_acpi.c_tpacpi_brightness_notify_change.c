
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BACKLIGHT_UPDATE_HOTKEY ;
 int backlight_force_update (int ,int ) ;
 int ibm_backlight_device ;

__attribute__((used)) static void tpacpi_brightness_notify_change(void)
{
 backlight_force_update(ibm_backlight_device,
          BACKLIGHT_UPDATE_HOTKEY);
}
