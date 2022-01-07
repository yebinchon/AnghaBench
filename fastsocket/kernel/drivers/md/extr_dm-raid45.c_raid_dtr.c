
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int raid_devs; } ;
struct TYPE_3__ {int wq; } ;
struct raid_set {TYPE_2__ set; TYPE_1__ io; } ;
struct dm_target {struct raid_set* private; } ;


 int context_free (struct raid_set*,int ) ;
 int destroy_workqueue (int ) ;

__attribute__((used)) static void raid_dtr(struct dm_target *ti)
{
 struct raid_set *rs = ti->private;

 destroy_workqueue(rs->io.wq);
 context_free(rs, rs->set.raid_devs);
}
