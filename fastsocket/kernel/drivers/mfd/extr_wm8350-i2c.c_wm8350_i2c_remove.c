
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct wm8350* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct wm8350*) ;
 int wm8350_device_exit (struct wm8350*) ;

__attribute__((used)) static int wm8350_i2c_remove(struct i2c_client *i2c)
{
 struct wm8350 *wm8350 = i2c_get_clientdata(i2c);

 wm8350_device_exit(wm8350);
 kfree(wm8350);

 return 0;
}
