
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int wq; int dws_do_raid; } ;
struct TYPE_5__ {int rh; struct dm_dirty_log* dl; } ;
struct raid_set {TYPE_3__ io; TYPE_2__ recover; } ;
struct dm_target {struct raid_set* private; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct TYPE_4__ {scalar_t__ (* presuspend ) (struct dm_dirty_log*) ;} ;


 int DMWARN (char*) ;
 scalar_t__ RSRecover (struct raid_set*) ;
 int SetRSSuspend (struct raid_set*) ;
 int cancel_delayed_work (int *) ;
 int dm_rh_stop_recovery (int ) ;
 int flush_workqueue (int ) ;
 scalar_t__ stub1 (struct dm_dirty_log*) ;
 int wait_ios (struct raid_set*) ;

__attribute__((used)) static void raid_presuspend(struct dm_target *ti)
{
 struct raid_set *rs = ti->private;
 struct dm_dirty_log *dl = rs->recover.dl;

 SetRSSuspend(rs);

 if (RSRecover(rs))
  dm_rh_stop_recovery(rs->recover.rh);

 cancel_delayed_work(&rs->io.dws_do_raid);
 flush_workqueue(rs->io.wq);
 wait_ios(rs);

 if (dl->type->presuspend && dl->type->presuspend(dl))

  DMWARN("log presuspend failed");
}
