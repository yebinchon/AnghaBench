
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct apm_user* private_data; } ;
struct apm_user {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int apm_waitqueue ;
 scalar_t__ check_apm_user (struct apm_user*,char*) ;
 int poll_wait (struct file*,int *,int *) ;
 int queue_empty (struct apm_user*) ;

__attribute__((used)) static unsigned int do_poll(struct file *fp, poll_table *wait)
{
 struct apm_user *as;

 as = fp->private_data;
 if (check_apm_user(as, "poll"))
  return 0;
 poll_wait(fp, &apm_waitqueue, wait);
 if (!queue_empty(as))
  return POLLIN | POLLRDNORM;
 return 0;
}
