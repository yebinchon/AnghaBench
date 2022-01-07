
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int connected; int lock; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static bool srp_change_conn_state(struct srp_target_port *target,
      bool connected)
{
 bool changed = 0;

 spin_lock_irq(&target->lock);
 if (target->connected != connected) {
  target->connected = connected;
  changed = 1;
 }
 spin_unlock_irq(&target->lock);

 return changed;
}
