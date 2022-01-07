
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int dummy; } ;
struct device {int dummy; } ;


 int THIS_MODULE ;
 int kfree (struct rc_dev*) ;
 int module_put (int ) ;
 struct rc_dev* to_rc_dev (struct device*) ;

__attribute__((used)) static void rc_dev_release(struct device *device)
{
 struct rc_dev *dev = to_rc_dev(device);

 kfree(dev);
 module_put(THIS_MODULE);
}
