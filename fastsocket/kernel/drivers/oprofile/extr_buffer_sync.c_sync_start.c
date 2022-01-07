
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PROFILE_MUNMAP ;
 int PROFILE_TASK_EXIT ;
 int buffer_mutex ;
 int free_cpumask_var (int ) ;
 int marked_cpus ;
 int module_load_nb ;
 int munmap_nb ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int profile_event_register (int ,int *) ;
 int profile_event_unregister (int ,int *) ;
 int register_module_notifier (int *) ;
 int start_cpu_work () ;
 int task_exit_nb ;
 int task_free_nb ;
 int task_handoff_register (int *) ;
 int task_handoff_unregister (int *) ;
 int zalloc_cpumask_var (int *,int ) ;

int sync_start(void)
{
 int err;

 if (!zalloc_cpumask_var(&marked_cpus, GFP_KERNEL))
  return -ENOMEM;

 mutex_lock(&buffer_mutex);

 err = task_handoff_register(&task_free_nb);
 if (err)
  goto out1;
 err = profile_event_register(PROFILE_TASK_EXIT, &task_exit_nb);
 if (err)
  goto out2;
 err = profile_event_register(PROFILE_MUNMAP, &munmap_nb);
 if (err)
  goto out3;
 err = register_module_notifier(&module_load_nb);
 if (err)
  goto out4;

 start_cpu_work();

out:
 mutex_unlock(&buffer_mutex);
 return err;
out4:
 profile_event_unregister(PROFILE_MUNMAP, &munmap_nb);
out3:
 profile_event_unregister(PROFILE_TASK_EXIT, &task_exit_nb);
out2:
 task_handoff_unregister(&task_free_nb);
out1:
 free_cpumask_var(marked_cpus);
 goto out;
}
