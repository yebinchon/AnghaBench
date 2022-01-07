
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400 {int ucb1400_gpio; int ucb1400_ts; } ;
struct device {int dummy; } ;


 struct ucb1400* dev_get_drvdata (struct device*) ;
 int kfree (struct ucb1400*) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static int ucb1400_core_remove(struct device *dev)
{
 struct ucb1400 *ucb = dev_get_drvdata(dev);

 platform_device_unregister(ucb->ucb1400_ts);
 platform_device_unregister(ucb->ucb1400_gpio);

 kfree(ucb);
 return 0;
}
