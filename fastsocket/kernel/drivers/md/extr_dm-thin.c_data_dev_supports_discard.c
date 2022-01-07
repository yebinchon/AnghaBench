
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct pool_c {TYPE_1__* data_dev; } ;
struct TYPE_2__ {int bdev; } ;


 struct request_queue* bdev_get_queue (int ) ;
 scalar_t__ blk_queue_discard (struct request_queue*) ;

__attribute__((used)) static bool data_dev_supports_discard(struct pool_c *pt)
{
 struct request_queue *q = bdev_get_queue(pt->data_dev->bdev);

 return q && blk_queue_discard(q);
}
