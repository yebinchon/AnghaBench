
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* bus; } ;
typedef int pm_message_t ;
struct TYPE_2__ {scalar_t__ pm; } ;


 int pm_dev_dbg (struct device*,int ,char*) ;
 int pm_noirq_op (struct device*,scalar_t__,int ) ;

__attribute__((used)) static int device_suspend_noirq(struct device *dev, pm_message_t state)
{
 int error = 0;

 if (!dev->bus)
  return 0;

 if (dev->bus->pm) {
  pm_dev_dbg(dev, state, "LATE ");
  error = pm_noirq_op(dev, dev->bus->pm, state);
 }
 return error;
}
