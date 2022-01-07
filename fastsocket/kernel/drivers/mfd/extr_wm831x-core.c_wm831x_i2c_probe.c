
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int write_dev; int read_dev; struct i2c_client* control_data; int * dev; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {int irq; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int i2c_set_clientdata (struct i2c_client*,struct wm831x*) ;
 int kfree (struct i2c_client*) ;
 struct wm831x* kzalloc (int,int ) ;
 int wm831x_device_init (struct wm831x*,int ,int ) ;
 int wm831x_i2c_read_device ;
 int wm831x_i2c_write_device ;

__attribute__((used)) static int wm831x_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct wm831x *wm831x;

 wm831x = kzalloc(sizeof(struct wm831x), GFP_KERNEL);
 if (wm831x == ((void*)0)) {
  kfree(i2c);
  return -ENOMEM;
 }

 i2c_set_clientdata(i2c, wm831x);
 wm831x->dev = &i2c->dev;
 wm831x->control_data = i2c;
 wm831x->read_dev = wm831x_i2c_read_device;
 wm831x->write_dev = wm831x_i2c_write_device;

 return wm831x_device_init(wm831x, id->driver_data, i2c->irq);
}
