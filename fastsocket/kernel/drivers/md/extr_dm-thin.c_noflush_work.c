
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {TYPE_1__* pool; } ;
struct noflush_work {int complete; int wait; int worker; struct thin_c* tc; } ;
struct TYPE_2__ {int wq; } ;


 int INIT_WORK (int *,void (*) (struct work_struct*)) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int queue_work (int ,int *) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static void noflush_work(struct thin_c *tc, void (*fn)(struct work_struct *))
{
 struct noflush_work w;

 INIT_WORK(&w.worker, fn);
 w.tc = tc;
 atomic_set(&w.complete, 0);
 init_waitqueue_head(&w.wait);

 queue_work(tc->pool->wq, &w.worker);

 wait_event(w.wait, atomic_read(&w.complete));
}
