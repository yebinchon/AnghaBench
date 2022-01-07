
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int poll_table ;
struct TYPE_2__ {int count; int misc_wait; } ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 scalar_t__ atomic_read (int *) ;
 TYPE_1__ lis3_dev ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int lis3lv02d_misc_poll(struct file *file, poll_table *wait)
{
 poll_wait(file, &lis3_dev.misc_wait, wait);
 if (atomic_read(&lis3_dev.count))
  return POLLIN | POLLRDNORM;
 return 0;
}
