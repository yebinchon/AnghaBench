
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int devno; int udev; } ;


 int cx231xx_dev_uninit (struct cx231xx*) ;
 int cx231xx_devused ;
 int cx231xx_ir_exit (struct cx231xx*) ;
 int cx231xx_release_analog_resources (struct cx231xx*) ;
 int cx231xx_remove_from_devlist (struct cx231xx*) ;
 int usb_put_dev (int ) ;

void cx231xx_release_resources(struct cx231xx *dev)
{
 cx231xx_release_analog_resources(dev);

 cx231xx_remove_from_devlist(dev);


 cx231xx_dev_uninit(dev);

 cx231xx_ir_exit(dev);

 usb_put_dev(dev->udev);


 cx231xx_devused &= ~(1 << dev->devno);
}
