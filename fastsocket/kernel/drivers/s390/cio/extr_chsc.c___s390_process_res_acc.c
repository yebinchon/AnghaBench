
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {int lock; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* chp_event ) (struct subchannel*,void*,int ) ;} ;


 int CHP_ONLINE ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct subchannel*,void*,int ) ;

__attribute__((used)) static int __s390_process_res_acc(struct subchannel *sch, void *data)
{
 spin_lock_irq(sch->lock);
 if (sch->driver && sch->driver->chp_event)
  sch->driver->chp_event(sch, data, CHP_ONLINE);
 spin_unlock_irq(sch->lock);

 return 0;
}
