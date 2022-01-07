
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {int lock; TYPE_1__* driver; } ;
struct chp_id {int dummy; } ;
struct chp_link {struct chp_id chpid; } ;
struct TYPE_2__ {int (* chp_event ) (struct subchannel*,struct chp_link*,int ) ;} ;


 int CHP_VARY_OFF ;
 int CHP_VARY_ON ;
 int memset (struct chp_link*,int ,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct subchannel*,struct chp_link*,int ) ;

__attribute__((used)) static void __s390_subchannel_vary_chpid(struct subchannel *sch,
      struct chp_id chpid, int on)
{
 unsigned long flags;
 struct chp_link link;

 memset(&link, 0, sizeof(struct chp_link));
 link.chpid = chpid;
 spin_lock_irqsave(sch->lock, flags);
 if (sch->driver && sch->driver->chp_event)
  sch->driver->chp_event(sch, &link,
           on ? CHP_VARY_ON : CHP_VARY_OFF);
 spin_unlock_irqrestore(sch->lock, flags);
}
