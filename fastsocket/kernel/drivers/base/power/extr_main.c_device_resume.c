
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int sem; TYPE_3__* class; TYPE_2__* type; TYPE_1__* bus; } ;
typedef int pm_message_t ;
struct TYPE_6__ {int (* resume ) (struct device*) ;scalar_t__ pm; } ;
struct TYPE_5__ {scalar_t__ pm; } ;
struct TYPE_4__ {int (* resume ) (struct device*) ;scalar_t__ pm; } ;


 int TRACE_DEVICE (struct device*) ;
 int TRACE_RESUME (int) ;
 int down (int *) ;
 int pm_dev_dbg (struct device*,int ,char*) ;
 int pm_op (struct device*,scalar_t__,int ) ;
 int stub1 (struct device*) ;
 int stub2 (struct device*) ;
 int up (int *) ;

__attribute__((used)) static int device_resume(struct device *dev, pm_message_t state)
{
 int error = 0;

 TRACE_DEVICE(dev);
 TRACE_RESUME(0);

 down(&dev->sem);

 if (dev->bus) {
  if (dev->bus->pm) {
   pm_dev_dbg(dev, state, "");
   error = pm_op(dev, dev->bus->pm, state);
  } else if (dev->bus->resume) {
   pm_dev_dbg(dev, state, "legacy ");
   error = dev->bus->resume(dev);
  }
  if (error)
   goto End;
 }

 if (dev->type) {
  if (dev->type->pm) {
   pm_dev_dbg(dev, state, "type ");
   error = pm_op(dev, dev->type->pm, state);
  }
  if (error)
   goto End;
 }

 if (dev->class) {
  if (dev->class->pm) {
   pm_dev_dbg(dev, state, "class ");
   error = pm_op(dev, dev->class->pm, state);
  } else if (dev->class->resume) {
   pm_dev_dbg(dev, state, "legacy class ");
   error = dev->class->resume(dev);
  }
 }
 End:
 up(&dev->sem);

 TRACE_RESUME(error);
 return error;
}
