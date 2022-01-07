
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* start ) () ;} ;


 int EINVAL ;
 int is_setup ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ oprofile_ops ;
 int oprofile_reset_stats () ;
 int oprofile_started ;
 int start_mutex ;
 int start_switch_worker () ;
 int stub1 () ;

int oprofile_start(void)
{
 int err = -EINVAL;

 mutex_lock(&start_mutex);

 if (!is_setup)
  goto out;

 err = 0;

 if (oprofile_started)
  goto out;

 oprofile_reset_stats();

 if ((err = oprofile_ops.start()))
  goto out;

 start_switch_worker();

 oprofile_started = 1;
out:
 mutex_unlock(&start_mutex);
 return err;
}
