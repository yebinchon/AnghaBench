
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int EPERM ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int ds_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tracers ;

__attribute__((used)) static inline int get_tracer(struct task_struct *task)
{
 int error;

 spin_lock_irq(&ds_lock);

 if (task) {
  error = -EPERM;
  if (atomic_read(&tracers) < 0)
   goto out;
  atomic_inc(&tracers);
 } else {
  error = -EPERM;
  if (atomic_read(&tracers) > 0)
   goto out;
  atomic_dec(&tracers);
 }

 error = 0;
out:
 spin_unlock_irq(&ds_lock);
 return error;
}
