
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 scalar_t__ data_to_read ;
 int ipmi_read_lock ;
 int poll_wait (struct file*,int *,int *) ;
 int read_q ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static unsigned int ipmi_poll(struct file *file, poll_table *wait)
{
 unsigned int mask = 0;

 poll_wait(file, &read_q, wait);

 spin_lock(&ipmi_read_lock);
 if (data_to_read)
  mask |= (POLLIN | POLLRDNORM);
 spin_unlock(&ipmi_read_lock);

 return mask;
}
