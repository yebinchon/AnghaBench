
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int lock; } ;


 int EBUSY ;
 int cio_disable_subchannel (struct subchannel*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void eadm_quiesce(struct subchannel *sch)
{
 int ret;

 do {
  spin_lock_irq(sch->lock);
  ret = cio_disable_subchannel(sch);
  spin_unlock_irq(sch->lock);
 } while (ret == -EBUSY);
}
