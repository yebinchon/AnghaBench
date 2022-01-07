
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dasd_block {TYPE_1__* request_queue; int request_queue_lock; } ;
struct TYPE_4__ {int * elevator; struct dasd_block* queuedata; } ;


 int ENOMEM ;
 int blk_cleanup_queue (TYPE_1__*) ;
 TYPE_1__* blk_init_queue (int ,int *) ;
 int do_dasd_request ;
 int elevator_exit (int *) ;
 int elevator_init (TYPE_1__*,char*) ;

__attribute__((used)) static int dasd_alloc_queue(struct dasd_block *block)
{
 int rc;

 block->request_queue = blk_init_queue(do_dasd_request,
            &block->request_queue_lock);
 if (block->request_queue == ((void*)0))
  return -ENOMEM;

 block->request_queue->queuedata = block;

 elevator_exit(block->request_queue->elevator);
 block->request_queue->elevator = ((void*)0);
 rc = elevator_init(block->request_queue, "deadline");
 if (rc) {
  blk_cleanup_queue(block->request_queue);
  return rc;
 }
 return 0;
}
