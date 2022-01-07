
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PM_SUSPEND_MEM ;
 int PM_SUSPEND_STANDBY ;
 int agent_wq ;
 int current ;
 int pci_pm_state ;
 int pm_suspend (int ) ;
 scalar_t__ signal_pending (int ) ;
 int try_to_freeze () ;
 int wait_event_interruptible (int ,int) ;
 int wake_from_pci ;

__attribute__((used)) static int agent_thread_fn(void *data)
{
 while (1) {
  wait_event_interruptible(agent_wq, pci_pm_state >= 2);
  try_to_freeze();

  if (signal_pending(current) || pci_pm_state < 2)
   continue;
  wake_from_pci = 1;

  pm_suspend(pci_pm_state == 3 ? PM_SUSPEND_MEM :
                                 PM_SUSPEND_STANDBY);

  wake_from_pci = 0;
 }

 return 0;
}
