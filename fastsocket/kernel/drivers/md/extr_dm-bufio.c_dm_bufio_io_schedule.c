
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int bdev; } ;


 int bdev_get_queue (int ) ;
 int blk_unplug (int ) ;
 int io_schedule () ;

__attribute__((used)) static void dm_bufio_io_schedule(struct dm_bufio_client *c)
{
 blk_unplug(bdev_get_queue(c->bdev));
 io_schedule();
}
