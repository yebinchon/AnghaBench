
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct device {int sem; TYPE_6__* bus; TYPE_4__* type; TYPE_2__* class; } ;
typedef int pm_message_t ;
struct TYPE_12__ {TYPE_5__* pm; } ;
struct TYPE_11__ {int (* complete ) (struct device*) ;} ;
struct TYPE_10__ {TYPE_3__* pm; } ;
struct TYPE_9__ {int (* complete ) (struct device*) ;} ;
struct TYPE_8__ {TYPE_1__* pm; } ;
struct TYPE_7__ {int (* complete ) (struct device*) ;} ;


 int down (int *) ;
 int pm_dev_dbg (struct device*,int ,char*) ;
 int stub1 (struct device*) ;
 int stub2 (struct device*) ;
 int stub3 (struct device*) ;
 int up (int *) ;

__attribute__((used)) static void device_complete(struct device *dev, pm_message_t state)
{
 down(&dev->sem);

 if (dev->class && dev->class->pm && dev->class->pm->complete) {
  pm_dev_dbg(dev, state, "completing class ");
  dev->class->pm->complete(dev);
 }

 if (dev->type && dev->type->pm && dev->type->pm->complete) {
  pm_dev_dbg(dev, state, "completing type ");
  dev->type->pm->complete(dev);
 }

 if (dev->bus && dev->bus->pm && dev->bus->pm->complete) {
  pm_dev_dbg(dev, state, "completing ");
  dev->bus->pm->complete(dev);
 }

 up(&dev->sem);
}
