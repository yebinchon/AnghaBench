
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct page {int dummy; } ;
struct backing_dev_info {struct request_queue* unplug_io_data; } ;


 int blk_unplug (struct request_queue*) ;

__attribute__((used)) static void blk_backing_dev_unplug(struct backing_dev_info *bdi,
       struct page *page)
{
 struct request_queue *q = bdi->unplug_io_data;

 blk_unplug(q);
}
