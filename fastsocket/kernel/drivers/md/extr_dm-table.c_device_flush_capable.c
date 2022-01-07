
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {unsigned int flush_flags; } ;
struct dm_target {int dummy; } ;
struct dm_dev {int bdev; } ;
typedef int sector_t ;


 struct request_queue* bdev_get_queue (int ) ;

__attribute__((used)) static int device_flush_capable(struct dm_target *ti, struct dm_dev *dev,
    sector_t start, sector_t len, void *data)
{
 unsigned flush = (*(unsigned *)data);
 struct request_queue *q = bdev_get_queue(dev->bdev);

 return q && (q->flush_flags & flush);
}
