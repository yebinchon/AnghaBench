
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mdstat_info* private; } ;
struct mdstat_info {scalar_t__ event; } ;
struct file {struct seq_file* private_data; } ;
typedef int poll_table ;


 int POLLERR ;
 int POLLIN ;
 int POLLPRI ;
 int POLLRDNORM ;
 scalar_t__ atomic_read (int *) ;
 int md_event_count ;
 int md_event_waiters ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int mdstat_poll(struct file *filp, poll_table *wait)
{
 struct seq_file *m = filp->private_data;
 struct mdstat_info *mi = m->private;
 int mask;

 poll_wait(filp, &md_event_waiters, wait);


 mask = POLLIN | POLLRDNORM;

 if (mi->event != atomic_read(&md_event_count))
  mask |= POLLERR | POLLPRI;
 return mask;
}
