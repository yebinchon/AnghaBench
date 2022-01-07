
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_user {int suspend_result; scalar_t__ suspend_wait; struct apm_user* next; } ;


 int APM_NORMAL_RESUME ;
 int APM_NO_ERROR ;
 int APM_STATE_SUSPEND ;
 int APM_SUCCESS ;
 int EIO ;
 int PMSG_RESUME ;
 int PMSG_SUSPEND ;
 int apm_error (char*,int) ;
 int apm_suspend_waitqueue ;
 int dpm_resume_end (int ) ;
 int dpm_resume_noirq (int ) ;
 int dpm_suspend_noirq (int ) ;
 int dpm_suspend_start (int ) ;
 int ignore_normal_resume ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int queue_event (int ,int *) ;
 int reinit_timer () ;
 int restore_processor_state () ;
 int save_processor_state () ;
 int set_system_power_state (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysdev_resume () ;
 int sysdev_suspend (int ) ;
 struct apm_user* user_list ;
 int user_list_lock ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int suspend(int vetoable)
{
 int err;
 struct apm_user *as;

 dpm_suspend_start(PMSG_SUSPEND);

 dpm_suspend_noirq(PMSG_SUSPEND);

 local_irq_disable();
 sysdev_suspend(PMSG_SUSPEND);

 local_irq_enable();

 save_processor_state();
 err = set_system_power_state(APM_STATE_SUSPEND);
 ignore_normal_resume = 1;
 restore_processor_state();

 local_irq_disable();
 reinit_timer();

 if (err == APM_NO_ERROR)
  err = APM_SUCCESS;
 if (err != APM_SUCCESS)
  apm_error("suspend", err);
 err = (err == APM_SUCCESS) ? 0 : -EIO;

 sysdev_resume();
 local_irq_enable();

 dpm_resume_noirq(PMSG_RESUME);

 dpm_resume_end(PMSG_RESUME);
 queue_event(APM_NORMAL_RESUME, ((void*)0));
 spin_lock(&user_list_lock);
 for (as = user_list; as != ((void*)0); as = as->next) {
  as->suspend_wait = 0;
  as->suspend_result = err;
 }
 spin_unlock(&user_list_lock);
 wake_up_interruptible(&apm_suspend_waitqueue);
 return err;
}
