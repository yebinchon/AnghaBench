
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {int state; scalar_t__ write_suspended; scalar_t__ erase_suspended; int mutex; int wq; } ;
struct cfi_private {int dummy; } ;
typedef int map_word ;


 int CMD (int) ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int ETIME ;
 int FL_ERASING ;
 void* FL_STATUS ;
 int FL_WRITING ;
 int HZ ;
 int INVALIDATE_CACHED_RANGE (struct map_info*,unsigned long,int) ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int cond_resched () ;
 int current ;
 int map_read (struct map_info*,unsigned long) ;
 scalar_t__ map_word_andequal (struct map_info*,int ,int ,int ) ;
 int map_write (struct map_info*,int ,unsigned long) ;
 int msleep (unsigned int) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int udelay (int) ;
 int wait ;

__attribute__((used)) static int inval_cache_and_wait_for_operation(
  struct map_info *map, struct flchip *chip,
  unsigned long cmd_adr, unsigned long inval_adr, int inval_len,
  unsigned int chip_op_time, unsigned int chip_op_time_max)
{
 struct cfi_private *cfi = map->fldrv_priv;
 map_word status, status_OK = CMD(0x80);
 int chip_state = chip->state;
 unsigned int timeo, sleep_time, reset_timeo;

 spin_unlock(chip->mutex);
 if (inval_len)
  INVALIDATE_CACHED_RANGE(map, inval_adr, inval_len);
 spin_lock(chip->mutex);

 timeo = chip_op_time_max;
 if (!timeo)
  timeo = 500000;
 reset_timeo = timeo;
 sleep_time = chip_op_time / 2;

 for (;;) {
  status = map_read(map, cmd_adr);
  if (map_word_andequal(map, status, status_OK, status_OK))
   break;

  if (!timeo) {
   map_write(map, CMD(0x70), cmd_adr);
   chip->state = FL_STATUS;
   return -ETIME;
  }


  spin_unlock(chip->mutex);
  if (sleep_time >= 1000000/HZ) {





   msleep(sleep_time/1000);
   timeo -= sleep_time;
   sleep_time = 1000000/HZ;
  } else {
   udelay(1);
   cond_resched();
   timeo--;
  }
  spin_lock(chip->mutex);

  while (chip->state != chip_state) {

   DECLARE_WAITQUEUE(wait, current);
   set_current_state(TASK_UNINTERRUPTIBLE);
   add_wait_queue(&chip->wq, &wait);
   spin_unlock(chip->mutex);
   schedule();
   remove_wait_queue(&chip->wq, &wait);
   spin_lock(chip->mutex);
  }
  if (chip->erase_suspended && chip_state == FL_ERASING) {

   timeo = reset_timeo;
   chip->erase_suspended = 0;
  }
  if (chip->write_suspended && chip_state == FL_WRITING) {

   timeo = reset_timeo;
   chip->write_suspended = 0;
  }
 }


  chip->state = FL_STATUS;
 return 0;
}
