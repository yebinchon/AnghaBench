
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
struct flchip_shared {int lock; struct flchip* erasing; struct flchip* writing; } ;
struct flchip {scalar_t__ state; unsigned long start; int oldstate; int * mutex; int wq; struct flchip_shared* priv; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int FL_ERASING ;
 int FL_OTP_WRITE ;
 int FL_SHUTDOWN ;
 scalar_t__ FL_SYNCING ;
 int FL_WRITING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int chip_ready (struct map_info*,struct flchip*,unsigned long,int) ;
 int current ;
 int put_chip (struct map_info*,struct flchip*,unsigned long) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock (int *) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int wait ;

__attribute__((used)) static int get_chip(struct map_info *map, struct flchip *chip, unsigned long adr, int mode)
{
 int ret;
 DECLARE_WAITQUEUE(wait, current);

 retry:
 if (chip->priv &&
     (mode == FL_WRITING || mode == FL_ERASING || mode == FL_OTP_WRITE
     || mode == FL_SHUTDOWN) && chip->state != FL_SYNCING) {
  struct flchip_shared *shared = chip->priv;
  struct flchip *contender;
  spin_lock(&shared->lock);
  contender = shared->writing;
  if (contender && contender != chip) {
   ret = spin_trylock(contender->mutex);
   spin_unlock(&shared->lock);
   if (!ret)
    goto retry;
   spin_unlock(chip->mutex);
   ret = chip_ready(map, contender, contender->start, mode);
   spin_lock(chip->mutex);

   if (ret == -EAGAIN) {
    spin_unlock(contender->mutex);
    goto retry;
   }
   if (ret) {
    spin_unlock(contender->mutex);
    return ret;
   }
   spin_lock(&shared->lock);



   if (chip->state == FL_SYNCING) {
    put_chip(map, contender, contender->start);
    spin_unlock(contender->mutex);
    goto retry;
   }
   spin_unlock(contender->mutex);
  }



  if (mode == FL_ERASING && shared->erasing
      && shared->erasing->oldstate == FL_ERASING) {
   spin_unlock(&shared->lock);
   set_current_state(TASK_UNINTERRUPTIBLE);
   add_wait_queue(&chip->wq, &wait);
   spin_unlock(chip->mutex);
   schedule();
   remove_wait_queue(&chip->wq, &wait);
   spin_lock(chip->mutex);
   goto retry;
  }


  shared->writing = chip;
  if (mode == FL_ERASING)
   shared->erasing = chip;
  spin_unlock(&shared->lock);
 }
 ret = chip_ready(map, chip, adr, mode);
 if (ret == -EAGAIN)
  goto retry;

 return ret;
}
