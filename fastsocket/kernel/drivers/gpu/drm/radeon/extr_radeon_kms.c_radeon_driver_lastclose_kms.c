
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int vga_switcheroo_process_delayed_switch () ;

void radeon_driver_lastclose_kms(struct drm_device *dev)
{
 vga_switcheroo_process_delayed_switch();
}
