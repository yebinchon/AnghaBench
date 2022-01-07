
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int lock_kernel () ;
 int perf_enabled ;
 int perf_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_kernel () ;

__attribute__((used)) static int perf_open(struct inode *inode, struct file *file)
{
 lock_kernel();
 spin_lock(&perf_lock);
 if (perf_enabled) {
  spin_unlock(&perf_lock);
  unlock_kernel();
  return -EBUSY;
 }
 perf_enabled = 1;
  spin_unlock(&perf_lock);
 unlock_kernel();

 return 0;
}
