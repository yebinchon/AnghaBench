
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmm_free_pages (int ) ;
 int cmm_mem_isolate_nb ;
 int cmm_mem_nb ;
 int cmm_oom_nb ;
 int cmm_reboot_nb ;
 int cmm_sysdev ;
 scalar_t__ cmm_thread_ptr ;
 int cmm_unregister_sysfs (int *) ;
 int kthread_stop (scalar_t__) ;
 int loaned_pages ;
 int unregister_memory_isolate_notifier (int *) ;
 int unregister_memory_notifier (int *) ;
 int unregister_oom_notifier (int *) ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static void cmm_exit(void)
{
 if (cmm_thread_ptr)
  kthread_stop(cmm_thread_ptr);
 unregister_oom_notifier(&cmm_oom_nb);
 unregister_reboot_notifier(&cmm_reboot_nb);
 unregister_memory_notifier(&cmm_mem_nb);
 unregister_memory_isolate_notifier(&cmm_mem_isolate_nb);
 cmm_free_pages(loaned_pages);
 cmm_unregister_sysfs(&cmm_sysdev);
}
