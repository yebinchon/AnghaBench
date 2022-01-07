
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct file {struct apm_user* private_data; } ;
struct apm_user {int suspend_wait; int suspend_result; int suspends_pending; int suspends_read; int standbys_pending; int standbys_read; int writer; int suser; } ;




 int APM_USER_STANDBY ;
 int APM_USER_SUSPEND ;
 long EIO ;
 long ENOTTY ;
 long EPERM ;
 int apm_suspend_waitqueue ;
 scalar_t__ check_apm_user (struct apm_user*,char*) ;
 int lock_kernel () ;
 int queue_event (int ,struct apm_user*) ;
 int standby () ;
 int standbys_pending ;
 int suspend (int) ;
 int suspends_pending ;
 int unlock_kernel () ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static long do_ioctl(struct file *filp, u_int cmd, u_long arg)
{
 struct apm_user *as;
 int ret;

 as = filp->private_data;
 if (check_apm_user(as, "ioctl"))
  return -EIO;
 if (!as->suser || !as->writer)
  return -EPERM;
 switch (cmd) {
 case 129:
  lock_kernel();
  if (as->standbys_read > 0) {
   as->standbys_read--;
   as->standbys_pending--;
   standbys_pending--;
  } else
   queue_event(APM_USER_STANDBY, as);
  if (standbys_pending <= 0)
   standby();
  unlock_kernel();
  break;
 case 128:
  lock_kernel();
  if (as->suspends_read > 0) {
   as->suspends_read--;
   as->suspends_pending--;
   suspends_pending--;
  } else
   queue_event(APM_USER_SUSPEND, as);
  if (suspends_pending <= 0) {
   ret = suspend(1);
  } else {
   as->suspend_wait = 1;
   wait_event_interruptible(apm_suspend_waitqueue,
     as->suspend_wait == 0);
   ret = as->suspend_result;
  }
  unlock_kernel();
  return ret;
 default:
  return -ENOTTY;
 }
 return 0;
}
