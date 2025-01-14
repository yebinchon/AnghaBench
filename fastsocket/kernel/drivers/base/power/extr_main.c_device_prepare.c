
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


struct device {int sem; TYPE_6__* class; TYPE_4__* type; TYPE_2__* bus; } ;
typedef int pm_message_t ;
struct TYPE_12__ {TYPE_5__* pm; } ;
struct TYPE_11__ {int (* prepare ) (struct device*) ;} ;
struct TYPE_10__ {TYPE_3__* pm; } ;
struct TYPE_9__ {int (* prepare ) (struct device*) ;} ;
struct TYPE_8__ {TYPE_1__* pm; } ;
struct TYPE_7__ {int (* prepare ) (struct device*) ;} ;


 int down (int *) ;
 int pm_dev_dbg (struct device*,int ,char*) ;
 int stub1 (struct device*) ;
 int stub2 (struct device*) ;
 int stub3 (struct device*) ;
 int suspend_report_result (int (*) (struct device*),int) ;
 int up (int *) ;

__attribute__((used)) static int device_prepare(struct device *dev, pm_message_t state)
{
 int error = 0;

 down(&dev->sem);

 if (dev->bus && dev->bus->pm && dev->bus->pm->prepare) {
  pm_dev_dbg(dev, state, "preparing ");
  error = dev->bus->pm->prepare(dev);
  suspend_report_result(dev->bus->pm->prepare, error);
  if (error)
   goto End;
 }

 if (dev->type && dev->type->pm && dev->type->pm->prepare) {
  pm_dev_dbg(dev, state, "preparing type ");
  error = dev->type->pm->prepare(dev);
  suspend_report_result(dev->type->pm->prepare, error);
  if (error)
   goto End;
 }

 if (dev->class && dev->class->pm && dev->class->pm->prepare) {
  pm_dev_dbg(dev, state, "preparing class ");
  error = dev->class->pm->prepare(dev);
  suspend_report_result(dev->class->pm->prepare, error);
 }
 End:
 up(&dev->sem);

 return error;
}
