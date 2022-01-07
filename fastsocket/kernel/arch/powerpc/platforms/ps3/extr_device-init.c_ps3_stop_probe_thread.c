
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int kthread_stop (scalar_t__) ;
 scalar_t__ probe_task ;

__attribute__((used)) static int ps3_stop_probe_thread(struct notifier_block *nb, unsigned long code,
     void *data)
{
 if (probe_task)
  kthread_stop(probe_task);
 return 0;
}
