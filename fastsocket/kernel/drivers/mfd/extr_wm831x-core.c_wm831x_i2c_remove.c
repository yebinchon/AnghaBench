
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct wm831x* i2c_get_clientdata (struct i2c_client*) ;
 int wm831x_device_exit (struct wm831x*) ;

__attribute__((used)) static int wm831x_i2c_remove(struct i2c_client *i2c)
{
 struct wm831x *wm831x = i2c_get_clientdata(i2c);

 wm831x_device_exit(wm831x);

 return 0;
}
