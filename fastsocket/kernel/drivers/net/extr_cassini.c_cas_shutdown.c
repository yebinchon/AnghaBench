
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int cas_flags; int reset_task_pending; int reset_task_pending_all; int reset_task_pending_spare; int reset_task_pending_mtu; int link_timer; scalar_t__ hw_running; } ;


 int CAS_FLAG_SATURN ;
 scalar_t__ atomic_read (int *) ;
 int cas_lock_all_save (struct cas*,unsigned long) ;
 int cas_phy_powerdown (struct cas*) ;
 int cas_reset (struct cas*,int ) ;
 int cas_unlock_all_restore (struct cas*,unsigned long) ;
 int del_timer_sync (int *) ;
 int schedule () ;

__attribute__((used)) static void cas_shutdown(struct cas *cp)
{
 unsigned long flags;


 cp->hw_running = 0;

 del_timer_sync(&cp->link_timer);
 while (atomic_read(&cp->reset_task_pending))
  schedule();


 cas_lock_all_save(cp, flags);
 cas_reset(cp, 0);
 if (cp->cas_flags & CAS_FLAG_SATURN)
  cas_phy_powerdown(cp);
 cas_unlock_all_restore(cp, flags);
}
