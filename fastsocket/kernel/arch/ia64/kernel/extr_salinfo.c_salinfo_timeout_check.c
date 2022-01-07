
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct salinfo_data {int cpu_event; int open; } ;


 int cpus_empty (int ) ;
 int data_saved_lock ;
 int salinfo_work_to_do (struct salinfo_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
salinfo_timeout_check(struct salinfo_data *data)
{
 unsigned long flags;
 if (!data->open)
  return;
 if (!cpus_empty(data->cpu_event)) {
  spin_lock_irqsave(&data_saved_lock, flags);
  salinfo_work_to_do(data);
  spin_unlock_irqrestore(&data_saved_lock, flags);
 }
}
