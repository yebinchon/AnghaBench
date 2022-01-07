
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int poll_table ;
struct TYPE_2__ {int lock; int doneq; int proc_list; } ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 scalar_t__ kfifo_len (int ) ;
 TYPE_1__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int meye_poll(struct file *file, poll_table *wait)
{
 unsigned int res = 0;

 mutex_lock(&meye.lock);
 poll_wait(file, &meye.proc_list, wait);
 if (kfifo_len(meye.doneq))
  res = POLLIN | POLLRDNORM;
 mutex_unlock(&meye.lock);
 return res;
}
