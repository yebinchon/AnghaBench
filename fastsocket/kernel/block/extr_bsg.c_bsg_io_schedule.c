
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsg_device {scalar_t__ done_cmds; scalar_t__ queued_cmds; int lock; int wq_done; int flags; } ;


 int BSG_F_BLOCK ;
 int BUG_ON (int) ;
 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int ENODATA ;
 int TASK_UNINTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int io_schedule () ;
 int prepare_to_wait (int *,int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_bit (int ,int *) ;
 int wait ;

__attribute__((used)) static int bsg_io_schedule(struct bsg_device *bd)
{
 DEFINE_WAIT(wait);
 int ret = 0;

 spin_lock_irq(&bd->lock);

 BUG_ON(bd->done_cmds > bd->queued_cmds);







 if (bd->done_cmds == bd->queued_cmds) {
  ret = -ENODATA;
  goto unlock;
 }

 if (!test_bit(BSG_F_BLOCK, &bd->flags)) {
  ret = -EAGAIN;
  goto unlock;
 }

 prepare_to_wait(&bd->wq_done, &wait, TASK_UNINTERRUPTIBLE);
 spin_unlock_irq(&bd->lock);
 io_schedule();
 finish_wait(&bd->wq_done, &wait);

 return ret;
unlock:
 spin_unlock_irq(&bd->lock);
 return ret;
}
