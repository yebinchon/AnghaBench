
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r0conf {struct r0conf* devlist; struct r0conf* strip_zone; } ;
struct mddev {struct r0conf* private; int queue; } ;


 int blk_sync_queue (int ) ;
 int kfree (struct r0conf*) ;

__attribute__((used)) static int raid0_stop(struct mddev *mddev)
{
 struct r0conf *conf = mddev->private;

 blk_sync_queue(mddev->queue);
 kfree(conf->strip_zone);
 kfree(conf->devlist);
 kfree(conf);
 mddev->private = ((void*)0);
 return 0;
}
