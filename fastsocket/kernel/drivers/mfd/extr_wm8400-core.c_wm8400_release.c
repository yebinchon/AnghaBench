
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8400 {int dev; } ;


 int mfd_remove_devices (int ) ;

__attribute__((used)) static void wm8400_release(struct wm8400 *wm8400)
{
 mfd_remove_devices(wm8400->dev);
}
