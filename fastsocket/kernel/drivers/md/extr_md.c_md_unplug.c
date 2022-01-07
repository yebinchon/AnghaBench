
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {TYPE_1__* plug; scalar_t__ queue; } ;
struct TYPE_2__ {int (* unplug_fn ) (TYPE_1__*) ;} ;


 int blk_unplug (scalar_t__) ;
 int stub1 (TYPE_1__*) ;

void md_unplug(struct mddev *mddev)
{
 if (mddev->queue)
  blk_unplug(mddev->queue);
 if (mddev->plug)
  mddev->plug->unplug_fn(mddev->plug);
}
