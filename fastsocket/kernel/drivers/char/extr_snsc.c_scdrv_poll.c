
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subch_data_s {int sd_rlock; int sd_wlock; int sd_subch; int sd_nasid; int sd_wq; int sd_rq; } ;
struct poll_table_struct {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int SAL_IROUTER_INTR_RECV ;
 int SAL_IROUTER_INTR_XMIT ;
 int ia64_sn_irtr_intr (int ,int ) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int
scdrv_poll(struct file *file, struct poll_table_struct *wait)
{
 unsigned int mask = 0;
 int status = 0;
 struct subch_data_s *sd = (struct subch_data_s *) file->private_data;
 unsigned long flags;

 poll_wait(file, &sd->sd_rq, wait);
 poll_wait(file, &sd->sd_wq, wait);

 spin_lock_irqsave(&sd->sd_rlock, flags);
 spin_lock(&sd->sd_wlock);
 status = ia64_sn_irtr_intr(sd->sd_nasid, sd->sd_subch);
 spin_unlock(&sd->sd_wlock);
 spin_unlock_irqrestore(&sd->sd_rlock, flags);

 if (status > 0) {
  if (status & SAL_IROUTER_INTR_RECV) {
   mask |= POLLIN | POLLRDNORM;
  }
  if (status & SAL_IROUTER_INTR_XMIT) {
   mask |= POLLOUT | POLLWRNORM;
  }
 }

 return mask;
}
