
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dev; } ;


 int dev_attr_unique_id ;
 int device_remove_file (int ,int *) ;

void wm831x_otp_exit(struct wm831x *wm831x)
{
 device_remove_file(wm831x->dev, &dev_attr_unique_id);
}
