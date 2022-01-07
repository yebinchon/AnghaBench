
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int dummy; } ;
struct request_queue {struct backing_dev_info backing_dev_info; } ;
struct block_device {int dummy; } ;


 struct request_queue* bdev_get_queue (struct block_device*) ;

struct backing_dev_info *blk_get_backing_dev_info(struct block_device *bdev)
{
 struct backing_dev_info *ret = ((void*)0);
 struct request_queue *q = bdev_get_queue(bdev);

 if (q)
  ret = &q->backing_dev_info;
 return ret;
}
