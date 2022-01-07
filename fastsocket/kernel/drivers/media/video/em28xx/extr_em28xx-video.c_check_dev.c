
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int state; } ;


 int DEV_DISCONNECTED ;
 int DEV_MISCONFIGURED ;
 int EIO ;
 int ENODEV ;
 int em28xx_errdev (char*) ;

__attribute__((used)) static int check_dev(struct em28xx *dev)
{
 if (dev->state & DEV_DISCONNECTED) {
  em28xx_errdev("v4l2 ioctl: device not present\n");
  return -ENODEV;
 }

 if (dev->state & DEV_MISCONFIGURED) {
  em28xx_errdev("v4l2 ioctl: device is misconfigured; "
         "close and open it again\n");
  return -EIO;
 }
 return 0;
}
