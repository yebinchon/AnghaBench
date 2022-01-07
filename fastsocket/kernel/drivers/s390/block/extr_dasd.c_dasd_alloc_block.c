
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {unsigned long data; int function; } ;
struct dasd_block {TYPE_1__ profile; TYPE_2__ timer; int queue_lock; int ccw_queue; int tasklet; int tasklet_scheduled; int request_queue_lock; int open_count; } ;


 int ENOMEM ;
 struct dasd_block* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 scalar_t__ dasd_block_tasklet ;
 int dasd_block_timeout ;
 int init_timer (TYPE_2__*) ;
 struct dasd_block* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;

struct dasd_block *dasd_alloc_block(void)
{
 struct dasd_block *block;

 block = kzalloc(sizeof(*block), GFP_ATOMIC);
 if (!block)
  return ERR_PTR(-ENOMEM);

 atomic_set(&block->open_count, -1);

 spin_lock_init(&block->request_queue_lock);
 atomic_set(&block->tasklet_scheduled, 0);
 tasklet_init(&block->tasklet,
       (void (*)(unsigned long)) dasd_block_tasklet,
       (unsigned long) block);
 INIT_LIST_HEAD(&block->ccw_queue);
 spin_lock_init(&block->queue_lock);
 init_timer(&block->timer);
 block->timer.function = dasd_block_timeout;
 block->timer.data = (unsigned long) block;
 spin_lock_init(&block->profile.lock);

 return block;
}
