
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct nand_chip {int state; TYPE_1__* controller; } ;
struct mtd_info {int dummy; } ;
typedef int spinlock_t ;
struct TYPE_2__ {struct nand_chip* active; int wq; int lock; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int FL_PM_SUSPENDED ;
 int FL_READY ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait ;

__attribute__((used)) static int
nand_get_device(struct nand_chip *chip, struct mtd_info *mtd, int new_state)
{
 spinlock_t *lock = &chip->controller->lock;
 wait_queue_head_t *wq = &chip->controller->wq;
 DECLARE_WAITQUEUE(wait, current);
 retry:
 spin_lock(lock);


 if (!chip->controller->active)
  chip->controller->active = chip;

 if (chip->controller->active == chip && chip->state == FL_READY) {
  chip->state = new_state;
  spin_unlock(lock);
  return 0;
 }
 if (new_state == FL_PM_SUSPENDED) {
  spin_unlock(lock);
  return (chip->state == FL_PM_SUSPENDED) ? 0 : -EAGAIN;
 }
 set_current_state(TASK_UNINTERRUPTIBLE);
 add_wait_queue(wq, &wait);
 spin_unlock(lock);
 schedule();
 remove_wait_queue(wq, &wait);
 goto retry;
}
