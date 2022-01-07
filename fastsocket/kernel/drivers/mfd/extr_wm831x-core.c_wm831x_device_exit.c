
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dev; } ;


 int kfree (struct wm831x*) ;
 int mfd_remove_devices (int ) ;
 int wm831x_irq_exit (struct wm831x*) ;
 int wm831x_otp_exit (struct wm831x*) ;

__attribute__((used)) static void wm831x_device_exit(struct wm831x *wm831x)
{
 wm831x_otp_exit(wm831x);
 mfd_remove_devices(wm831x->dev);
 wm831x_irq_exit(wm831x);
 kfree(wm831x);
}
