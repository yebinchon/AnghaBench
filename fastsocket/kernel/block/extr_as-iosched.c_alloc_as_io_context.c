
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as_io_context {int state; scalar_t__ seek_mean; scalar_t__ seek_samples; scalar_t__ seek_total; scalar_t__ ttime_mean; scalar_t__ ttime_samples; scalar_t__ ttime_total; int lock; int nr_dispatched; int nr_queued; int exit; int dtor; } ;


 int AS_TASK_RUNNING ;
 int GFP_ATOMIC ;
 int as_ioc_count ;
 int atomic_set (int *,int ) ;
 int elv_ioc_count_inc (int ) ;
 int exit_as_io_context ;
 int free_as_io_context ;
 struct as_io_context* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct as_io_context *alloc_as_io_context(void)
{
 struct as_io_context *ret;

 ret = kmalloc(sizeof(*ret), GFP_ATOMIC);
 if (ret) {
  ret->dtor = free_as_io_context;
  ret->exit = exit_as_io_context;
  ret->state = 1 << AS_TASK_RUNNING;
  atomic_set(&ret->nr_queued, 0);
  atomic_set(&ret->nr_dispatched, 0);
  spin_lock_init(&ret->lock);
  ret->ttime_total = 0;
  ret->ttime_samples = 0;
  ret->ttime_mean = 0;
  ret->seek_total = 0;
  ret->seek_samples = 0;
  ret->seek_mean = 0;
  elv_ioc_count_inc(as_ioc_count);
 }

 return ret;
}
