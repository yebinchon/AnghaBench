
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ap_device {int dummy; } ;


 int kfree (struct ap_device*) ;
 struct ap_device* to_ap_dev (struct device*) ;

__attribute__((used)) static void ap_device_release(struct device *dev)
{
 struct ap_device *ap_dev = to_ap_dev(dev);

 kfree(ap_dev);
}
