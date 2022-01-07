
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_struct {int irqc; int irq_wait; } ;
struct file {struct pp_struct* private_data; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 scalar_t__ atomic_read (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int pp_poll (struct file * file, poll_table * wait)
{
 struct pp_struct *pp = file->private_data;
 unsigned int mask = 0;

 poll_wait (file, &pp->irq_wait, wait);
 if (atomic_read (&pp->irqc))
  mask |= POLLIN | POLLRDNORM;

 return mask;
}
