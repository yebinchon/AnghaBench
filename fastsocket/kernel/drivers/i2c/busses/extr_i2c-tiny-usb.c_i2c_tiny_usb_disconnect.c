
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct i2c_tiny_usb {int adapter; } ;


 int dev_dbg (int *,char*) ;
 int i2c_del_adapter (int *) ;
 int i2c_tiny_usb_free (struct i2c_tiny_usb*) ;
 struct i2c_tiny_usb* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void i2c_tiny_usb_disconnect(struct usb_interface *interface)
{
 struct i2c_tiny_usb *dev = usb_get_intfdata(interface);

 i2c_del_adapter(&dev->adapter);
 usb_set_intfdata(interface, ((void*)0));
 i2c_tiny_usb_free(dev);

 dev_dbg(&interface->dev, "disconnected\n");
}
