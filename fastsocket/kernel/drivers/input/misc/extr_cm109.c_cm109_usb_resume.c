
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct cm109_dev {int pm_mutex; } ;


 int cm109_restore_state (struct cm109_dev*) ;
 int dev_info (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cm109_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int cm109_usb_resume(struct usb_interface *intf)
{
 struct cm109_dev *dev = usb_get_intfdata(intf);

 dev_info(&intf->dev, "cm109: usb_resume\n");

 mutex_lock(&dev->pm_mutex);
 cm109_restore_state(dev);
 mutex_unlock(&dev->pm_mutex);

 return 0;
}
