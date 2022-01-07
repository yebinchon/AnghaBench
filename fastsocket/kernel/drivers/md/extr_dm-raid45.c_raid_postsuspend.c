
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct dm_dirty_log* dl; } ;
struct raid_set {TYPE_1__ recover; } ;
struct dm_target {struct raid_set* private; } ;
struct dm_dirty_log {TYPE_2__* type; } ;
struct TYPE_4__ {scalar_t__ (* postsuspend ) (struct dm_dirty_log*) ;} ;


 int DMWARN (char*) ;
 scalar_t__ stub1 (struct dm_dirty_log*) ;

__attribute__((used)) static void raid_postsuspend(struct dm_target *ti)
{
 struct raid_set *rs = ti->private;
 struct dm_dirty_log *dl = rs->recover.dl;

 if (dl->type->postsuspend && dl->type->postsuspend(dl))

  DMWARN("log postsuspend failed");

}
