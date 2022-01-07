
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct cm109_dev {int resetting; int pm_mutex; } ;


 int cm109_stop_traffic (struct cm109_dev*) ;
 int mutex_lock (int *) ;
 int smp_wmb () ;
 struct cm109_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int cm109_usb_pre_reset(struct usb_interface *intf)
{
 struct cm109_dev *dev = usb_get_intfdata(intf);

 mutex_lock(&dev->pm_mutex);





 dev->resetting = 1;
 smp_wmb();

 cm109_stop_traffic(dev);

 return 0;
}
