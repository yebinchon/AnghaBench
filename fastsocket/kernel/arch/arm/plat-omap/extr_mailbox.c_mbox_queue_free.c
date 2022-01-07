
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox_queue {int queue; } ;


 int blk_cleanup_queue (int ) ;
 int kfree (struct omap_mbox_queue*) ;

__attribute__((used)) static void mbox_queue_free(struct omap_mbox_queue *q)
{
 blk_cleanup_queue(q->queue);
 kfree(q);
}
