
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elevator_queue {struct as_data* elevator_data; } ;
struct as_data {int io_context; int * fifo_list; int antic_work; int antic_timer; } ;


 size_t BLK_RW_ASYNC ;
 size_t BLK_RW_SYNC ;
 int BUG_ON (int) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int kfree (struct as_data*) ;
 int list_empty (int *) ;
 int put_io_context (int ) ;

__attribute__((used)) static void as_exit_queue(struct elevator_queue *e)
{
 struct as_data *ad = e->elevator_data;

 del_timer_sync(&ad->antic_timer);
 cancel_work_sync(&ad->antic_work);

 BUG_ON(!list_empty(&ad->fifo_list[BLK_RW_SYNC]));
 BUG_ON(!list_empty(&ad->fifo_list[BLK_RW_ASYNC]));

 put_io_context(ad->io_context);
 kfree(ad);
}
