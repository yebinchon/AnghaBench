
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct bcm5974 {int intf; int pm_mutex; scalar_t__ opened; } ;


 int bcm5974_pause_traffic (struct bcm5974*) ;
 struct bcm5974* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static void bcm5974_close(struct input_dev *input)
{
 struct bcm5974 *dev = input_get_drvdata(input);

 mutex_lock(&dev->pm_mutex);

 bcm5974_pause_traffic(dev);
 dev->opened = 0;

 mutex_unlock(&dev->pm_mutex);

 usb_autopm_put_interface(dev->intf);
}
