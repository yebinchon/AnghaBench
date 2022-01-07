
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ rtas_log_size ;
 int rtas_log_wait ;

__attribute__((used)) static unsigned int rtas_log_poll(struct file *file, poll_table * wait)
{
 poll_wait(file, &rtas_log_wait, wait);
 if (rtas_log_size)
  return POLLIN | POLLRDNORM;
 return 0;
}
