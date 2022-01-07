
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMSG_PREFIX ;
 int cmm_free_pages (int ,int *,int *) ;
 int cmm_oom_nb ;
 int cmm_page_list ;
 int cmm_pages ;
 int cmm_power_notifier ;
 int cmm_smsg_target ;
 int cmm_sysctl_header ;
 int cmm_thread_ptr ;
 int cmm_timed_page_list ;
 int cmm_timed_pages ;
 int cmm_timer ;
 int del_timer_sync (int *) ;
 int kthread_stop (int ) ;
 int smsg_unregister_callback (int ,int ) ;
 int unregister_oom_notifier (int *) ;
 int unregister_pm_notifier (int *) ;
 int unregister_sysctl_table (int ) ;

__attribute__((used)) static void
cmm_exit(void)
{






 unregister_pm_notifier(&cmm_power_notifier);
 unregister_oom_notifier(&cmm_oom_nb);
 kthread_stop(cmm_thread_ptr);
 del_timer_sync(&cmm_timer);
 cmm_free_pages(cmm_pages, &cmm_pages, &cmm_page_list);
 cmm_free_pages(cmm_timed_pages, &cmm_timed_pages, &cmm_timed_page_list);
}
