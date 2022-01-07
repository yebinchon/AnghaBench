
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct mtd_info {int (* erase ) (struct mtd_info*,struct erase_info*) ;} ;
struct erase_info {unsigned long priv; scalar_t__ state; int callback; struct mtd_info* mtd; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EIO ;
 scalar_t__ MTD_ERASE_DONE ;
 scalar_t__ MTD_ERASE_FAILED ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int concat_erase_callback ;
 int current ;
 int init_waitqueue_head (int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int stub1 (struct mtd_info*,struct erase_info*) ;
 int wait ;

__attribute__((used)) static int concat_dev_erase(struct mtd_info *mtd, struct erase_info *erase)
{
 int err;
 wait_queue_head_t waitq;
 DECLARE_WAITQUEUE(wait, current);




 init_waitqueue_head(&waitq);

 erase->mtd = mtd;
 erase->callback = concat_erase_callback;
 erase->priv = (unsigned long) &waitq;





 err = mtd->erase(mtd, erase);
 if (!err) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  add_wait_queue(&waitq, &wait);
  if (erase->state != MTD_ERASE_DONE
      && erase->state != MTD_ERASE_FAILED)
   schedule();
  remove_wait_queue(&waitq, &wait);
  set_current_state(TASK_RUNNING);

  err = (erase->state == MTD_ERASE_FAILED) ? -EIO : 0;
 }
 return err;
}
