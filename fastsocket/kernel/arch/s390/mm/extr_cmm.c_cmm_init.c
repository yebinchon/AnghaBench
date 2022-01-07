
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SMSG_PREFIX ;
 int * cmm_default_sender ;
 int cmm_dir_table ;
 int cmm_oom_nb ;
 int cmm_power_notifier ;
 int cmm_smsg_target ;
 int cmm_sysctl_header ;
 int cmm_thread ;
 int cmm_thread_ptr ;
 int cmm_timer ;
 int del_timer_sync (int *) ;
 int kthread_run (int ,int *,char*) ;
 int register_oom_notifier (int *) ;
 int register_pm_notifier (int *) ;
 int register_sysctl_table (int ) ;
 int * sender ;
 int smsg_register_callback (int ,int ) ;
 int smsg_unregister_callback (int ,int ) ;
 int strlen (int *) ;
 int toupper (int ) ;
 int unregister_oom_notifier (int *) ;
 int unregister_pm_notifier (int *) ;
 int unregister_sysctl_table (int ) ;

__attribute__((used)) static int
cmm_init (void)
{
 int rc = -ENOMEM;
 rc = register_oom_notifier(&cmm_oom_nb);
 if (rc < 0)
  goto out_oom_notify;
 rc = register_pm_notifier(&cmm_power_notifier);
 if (rc)
  goto out_pm;
 cmm_thread_ptr = kthread_run(cmm_thread, ((void*)0), "cmmthread");
 rc = IS_ERR(cmm_thread_ptr) ? PTR_ERR(cmm_thread_ptr) : 0;
 if (rc)
  goto out_kthread;
 return 0;

out_kthread:
 unregister_pm_notifier(&cmm_power_notifier);
out_pm:
 unregister_oom_notifier(&cmm_oom_nb);
out_oom_notify:
 del_timer_sync(&cmm_timer);
 return rc;
}
