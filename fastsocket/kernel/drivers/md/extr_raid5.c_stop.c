
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r5conf {int plug; } ;
struct mddev {int * to_remove; int * plug; struct r5conf* private; TYPE_2__* queue; int thread; } ;
struct TYPE_3__ {int * congested_fn; } ;
struct TYPE_4__ {TYPE_1__ backing_dev_info; } ;


 int free_conf (struct r5conf*) ;
 int md_unregister_thread (int *) ;
 int plugger_flush (int *) ;
 int raid5_attrs_group ;

__attribute__((used)) static int stop(struct mddev *mddev)
{
 struct r5conf *conf = mddev->private;

 md_unregister_thread(&mddev->thread);
 if (mddev->queue)
  mddev->queue->backing_dev_info.congested_fn = ((void*)0);
 plugger_flush(&conf->plug);
 free_conf(conf);
 mddev->private = ((void*)0);
 mddev->plug = ((void*)0);
 mddev->to_remove = &raid5_attrs_group;
 return 0;
}
