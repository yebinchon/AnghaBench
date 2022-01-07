
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {scalar_t__ state; int remove_work; int lock; } ;


 scalar_t__ SRP_TARGET_REMOVED ;
 int queue_work (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int srp_wq ;

__attribute__((used)) static bool srp_queue_remove_work(struct srp_target_port *target)
{
 bool changed = 0;

 spin_lock_irq(&target->lock);
 if (target->state != SRP_TARGET_REMOVED) {
  target->state = SRP_TARGET_REMOVED;
  changed = 1;
 }
 spin_unlock_irq(&target->lock);

 if (changed)
  queue_work(srp_wq, &target->remove_work);

 return changed;
}
