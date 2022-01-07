
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int lock; int schid; } ;


 int EADM_LOG (int,char*) ;
 int EADM_LOG_HEX (int,int *,int) ;
 scalar_t__ eadm_subchannel_clear (struct subchannel*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void eadm_subchannel_timeout(unsigned long data)
{
 struct subchannel *sch = (struct subchannel *) data;

 spin_lock_irq(sch->lock);
 EADM_LOG(1, "timeout");
 EADM_LOG_HEX(1, &sch->schid, sizeof(sch->schid));
 if (eadm_subchannel_clear(sch))
  EADM_LOG(0, "clear failed");
 spin_unlock_irq(sch->lock);
}
