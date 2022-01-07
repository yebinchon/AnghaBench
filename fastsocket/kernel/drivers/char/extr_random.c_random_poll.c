
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int poll_table ;
struct TYPE_2__ {scalar_t__ entropy_count; } ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 TYPE_1__ input_pool ;
 int poll_wait (struct file*,int *,int *) ;
 int random_read_wait ;
 scalar_t__ random_read_wakeup_thresh ;
 int random_write_wait ;
 scalar_t__ random_write_wakeup_thresh ;

__attribute__((used)) static unsigned int
random_poll(struct file *file, poll_table * wait)
{
 unsigned int mask;

 poll_wait(file, &random_read_wait, wait);
 poll_wait(file, &random_write_wait, wait);
 mask = 0;
 if (input_pool.entropy_count >= random_read_wakeup_thresh)
  mask |= POLLIN | POLLRDNORM;
 if (input_pool.entropy_count < random_write_wakeup_thresh)
  mask |= POLLOUT | POLLWRNORM;
 return mask;
}
