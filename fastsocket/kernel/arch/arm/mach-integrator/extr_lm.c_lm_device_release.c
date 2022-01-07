
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct lm_device*) ;
 struct lm_device* to_lm_device (struct device*) ;

__attribute__((used)) static void lm_device_release(struct device *dev)
{
 struct lm_device *d = to_lm_device(dev);

 kfree(d);
}
