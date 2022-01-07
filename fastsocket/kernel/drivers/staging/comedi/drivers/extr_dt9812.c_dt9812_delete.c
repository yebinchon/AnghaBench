
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_dt9812 {int udev; } ;
struct kref {int dummy; } ;


 int kfree (struct usb_dt9812*) ;
 struct usb_dt9812* to_dt9812_dev (struct kref*) ;
 int usb_put_dev (int ) ;

__attribute__((used)) static void dt9812_delete(struct kref *kref)
{
 struct usb_dt9812 *dev = to_dt9812_dev(kref);

 usb_put_dev(dev->udev);
 kfree(dev);
}
