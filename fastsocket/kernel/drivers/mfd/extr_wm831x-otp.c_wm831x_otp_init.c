
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dev; } ;


 int dev_attr_unique_id ;
 int dev_err (int ,char*,int) ;
 int device_create_file (int ,int *) ;

int wm831x_otp_init(struct wm831x *wm831x)
{
 int ret;

 ret = device_create_file(wm831x->dev, &dev_attr_unique_id);
 if (ret != 0)
  dev_err(wm831x->dev, "Unique ID attribute not created: %d\n",
   ret);

 return ret;
}
