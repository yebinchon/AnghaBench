
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ private_data; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 scalar_t__ diva_dbg_q_length () ;
 int msgwaitq ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int maint_poll(struct file *file, poll_table * wait)
{
 unsigned int mask = 0;

 poll_wait(file, &msgwaitq, wait);
 mask = POLLOUT | POLLWRNORM;
 if (file->private_data || diva_dbg_q_length()) {
  mask |= POLLIN | POLLRDNORM;
 }
 return (mask);
}
