
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {scalar_t__ private_data; TYPE_2__ f_path; } ;
typedef int poll_table ;
struct TYPE_8__ {TYPE_3__** drv; int info_waitq; } ;
struct TYPE_7__ {scalar_t__ stavail; int st_waitq; } ;
struct TYPE_5__ {int d_inode; } ;


 unsigned int ISDN_MINOR_CTRL ;
 unsigned int ISDN_MINOR_CTRLMAX ;
 unsigned int ISDN_MINOR_PPPMAX ;
 unsigned int ISDN_MINOR_STATUS ;
 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 TYPE_4__* dev ;
 unsigned int iminor (int ) ;
 int isdn_minor2drv (unsigned int) ;
 unsigned int isdn_ppp_poll (struct file*,int *) ;
 int lock_kernel () ;
 int poll_wait (struct file*,int *,int *) ;
 int unlock_kernel () ;

__attribute__((used)) static unsigned int
isdn_poll(struct file *file, poll_table * wait)
{
 unsigned int mask = 0;
 unsigned int minor = iminor(file->f_path.dentry->d_inode);
 int drvidx = isdn_minor2drv(minor - ISDN_MINOR_CTRL);

 lock_kernel();
 if (minor == ISDN_MINOR_STATUS) {
  poll_wait(file, &(dev->info_waitq), wait);

  if (file->private_data) {
   mask |= POLLIN | POLLRDNORM;
  }
  goto out;
 }
 if (minor >= ISDN_MINOR_CTRL && minor <= ISDN_MINOR_CTRLMAX) {
  if (drvidx < 0) {

   mask = POLLHUP;
   goto out;
  }
  poll_wait(file, &(dev->drv[drvidx]->st_waitq), wait);
  mask = POLLOUT | POLLWRNORM;
  if (dev->drv[drvidx]->stavail) {
   mask |= POLLIN | POLLRDNORM;
  }
  goto out;
 }






 mask = POLLERR;
 out:
 unlock_kernel();
 return mask;
}
