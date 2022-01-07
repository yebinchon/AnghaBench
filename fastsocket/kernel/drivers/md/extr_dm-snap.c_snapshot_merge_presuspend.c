
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {int dummy; } ;


 int stop_merge (struct dm_snapshot*) ;

__attribute__((used)) static void snapshot_merge_presuspend(struct dm_target *ti)
{
 struct dm_snapshot *s = ti->private;

 stop_merge(s);
}
