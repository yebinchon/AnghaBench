
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int queue; } ;


 int blk_queue_stackable (int ) ;

__attribute__((used)) static int dm_request_based(struct mapped_device *md)
{
 return blk_queue_stackable(md->queue);
}
