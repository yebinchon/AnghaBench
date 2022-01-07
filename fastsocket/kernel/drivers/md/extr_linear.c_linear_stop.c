
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int * private; int queue; int reconfig_mutex; } ;
struct linear_conf {int dummy; } ;


 int blk_sync_queue (int ) ;
 int kfree (struct linear_conf*) ;
 int lockdep_is_held (int *) ;
 int rcu_barrier () ;
 struct linear_conf* rcu_dereference_protected (int *,int ) ;

__attribute__((used)) static int linear_stop (struct mddev *mddev)
{
 struct linear_conf *conf =
  rcu_dereference_protected(mddev->private,
       lockdep_is_held(
        &mddev->reconfig_mutex));
 rcu_barrier();
 blk_sync_queue(mddev->queue);
 kfree(conf);
 mddev->private = ((void*)0);

 return 0;
}
