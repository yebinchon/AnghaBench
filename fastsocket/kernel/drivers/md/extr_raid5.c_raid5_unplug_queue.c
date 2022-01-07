
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct mddev* queuedata; } ;
struct mddev {int private; } ;


 int md_raid5_unplug_device (int ) ;

__attribute__((used)) static void raid5_unplug_queue(struct request_queue *q)
{
 struct mddev *mddev = q->queuedata;
 md_raid5_unplug_device(mddev->private);
}
