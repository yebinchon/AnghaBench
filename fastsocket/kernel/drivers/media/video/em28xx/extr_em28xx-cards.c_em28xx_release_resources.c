
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int devno; int udev; int v4l2_dev; scalar_t__ ir; scalar_t__ sbutton_input_dev; } ;


 int em28xx_deregister_snapshot_button (struct em28xx*) ;
 int em28xx_devused ;
 int em28xx_i2c_unregister (struct em28xx*) ;
 int em28xx_ir_fini (struct em28xx*) ;
 int em28xx_release_analog_resources (struct em28xx*) ;
 int em28xx_remove_from_devlist (struct em28xx*) ;
 int usb_put_dev (int ) ;
 int v4l2_device_unregister (int *) ;

void em28xx_release_resources(struct em28xx *dev)
{
 if (dev->sbutton_input_dev)
  em28xx_deregister_snapshot_button(dev);

 if (dev->ir)
  em28xx_ir_fini(dev);



 em28xx_release_analog_resources(dev);

 em28xx_remove_from_devlist(dev);

 em28xx_i2c_unregister(dev);

 v4l2_device_unregister(&dev->v4l2_dev);

 usb_put_dev(dev->udev);


 em28xx_devused &= ~(1 << dev->devno);
}
