
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpconf {struct mpconf* multipaths; int pool; } ;
struct mddev {struct mpconf* private; int queue; int thread; } ;


 int blk_sync_queue (int ) ;
 int kfree (struct mpconf*) ;
 int md_unregister_thread (int *) ;
 int mempool_destroy (int ) ;

__attribute__((used)) static int multipath_stop (struct mddev *mddev)
{
 struct mpconf *conf = mddev->private;

 md_unregister_thread(&mddev->thread);
 blk_sync_queue(mddev->queue);
 mempool_destroy(conf->pool);
 kfree(conf->multipaths);
 kfree(conf);
 mddev->private = ((void*)0);
 return 0;
}
