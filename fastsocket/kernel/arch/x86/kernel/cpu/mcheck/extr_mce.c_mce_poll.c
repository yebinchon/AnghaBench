
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int poll_table ;
struct TYPE_2__ {int next; } ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 scalar_t__ apei_check_mce () ;
 int mce_apei_read_done ;
 int mce_wait ;
 TYPE_1__ mcelog ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ rcu_dereference (int ) ;

__attribute__((used)) static unsigned int mce_poll(struct file *file, poll_table *wait)
{
 poll_wait(file, &mce_wait, wait);
 if (rcu_dereference(mcelog.next))
  return POLLIN | POLLRDNORM;
 if (!mce_apei_read_done && apei_check_mce())
  return POLLIN | POLLRDNORM;
 return 0;
}
