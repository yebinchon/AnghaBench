
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int queue_io; struct dm_target* ti; int mpio_pool; int work_mutex; int pg_init_wait; int trigger_event; int process_queued_ios; int pg_init_delay_msecs; int lock; int queued_ios; int priority_groups; } ;
struct dm_target {struct multipath* private; } ;


 int DM_PG_INIT_DELAY_DEFAULT ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MIN_IOS ;
 int _mpio_cache ;
 int init_waitqueue_head (int *) ;
 int kfree (struct multipath*) ;
 struct multipath* kzalloc (int,int ) ;
 int mempool_create_slab_pool (int ,int ) ;
 int mutex_init (int *) ;
 int process_queued_ios ;
 int spin_lock_init (int *) ;
 int trigger_event ;

__attribute__((used)) static struct multipath *alloc_multipath(struct dm_target *ti)
{
 struct multipath *m;

 m = kzalloc(sizeof(*m), GFP_KERNEL);
 if (m) {
  INIT_LIST_HEAD(&m->priority_groups);
  INIT_LIST_HEAD(&m->queued_ios);
  spin_lock_init(&m->lock);
  m->queue_io = 1;
  m->pg_init_delay_msecs = DM_PG_INIT_DELAY_DEFAULT;
  INIT_WORK(&m->process_queued_ios, process_queued_ios);
  INIT_WORK(&m->trigger_event, trigger_event);
  init_waitqueue_head(&m->pg_init_wait);
  mutex_init(&m->work_mutex);
  m->mpio_pool = mempool_create_slab_pool(MIN_IOS, _mpio_cache);
  if (!m->mpio_pool) {
   kfree(m);
   return ((void*)0);
  }
  m->ti = ti;
  ti->private = m;
 }

 return m;
}
