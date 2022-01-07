
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_tiny_usb {int usb_dev; } ;


 int kfree (struct i2c_tiny_usb*) ;
 int usb_put_dev (int ) ;

__attribute__((used)) static void i2c_tiny_usb_free(struct i2c_tiny_usb *dev)
{
 usb_put_dev(dev->usb_dev);
 kfree(dev);
}
