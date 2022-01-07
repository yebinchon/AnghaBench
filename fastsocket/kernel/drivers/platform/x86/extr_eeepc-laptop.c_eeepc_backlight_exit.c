
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_device_unregister (int *) ;
 int * eeepc_backlight_device ;

__attribute__((used)) static void eeepc_backlight_exit(void)
{
 if (eeepc_backlight_device)
  backlight_device_unregister(eeepc_backlight_device);
 eeepc_backlight_device = ((void*)0);
}
