
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_block {int * request_queue; } ;


 int blk_cleanup_queue (int *) ;

__attribute__((used)) static void dasd_free_queue(struct dasd_block *block)
{
 if (block->request_queue) {
  blk_cleanup_queue(block->request_queue);
  block->request_queue = ((void*)0);
 }
}
