
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_block {int tasklet; int base; int tasklet_scheduled; } ;


 scalar_t__ atomic_cmpxchg (int *,int ,int) ;
 int dasd_get_device (int ) ;
 int tasklet_hi_schedule (int *) ;

void dasd_schedule_block_bh(struct dasd_block *block)
{

 if (atomic_cmpxchg(&block->tasklet_scheduled, 0, 1) != 0)
  return;

 dasd_get_device(block->base);
 tasklet_hi_schedule(&block->tasklet);
}
