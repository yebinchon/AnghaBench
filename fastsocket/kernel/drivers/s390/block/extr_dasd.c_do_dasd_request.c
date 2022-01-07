
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct dasd_block* queuedata; } ;
struct dasd_block {int queue_lock; } ;


 int __dasd_block_start_head (struct dasd_block*) ;
 int __dasd_process_request_queue (struct dasd_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void do_dasd_request(struct request_queue *queue)
{
 struct dasd_block *block;

 block = queue->queuedata;
 spin_lock(&block->queue_lock);

 __dasd_process_request_queue(block);

 __dasd_block_start_head(block);
 spin_unlock(&block->queue_lock);
}
