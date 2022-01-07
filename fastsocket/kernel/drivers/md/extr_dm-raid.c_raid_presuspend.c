
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_set {int md; } ;
struct dm_target {struct raid_set* private; } ;


 int md_stop_writes (int *) ;

__attribute__((used)) static void raid_presuspend(struct dm_target *ti)
{
 struct raid_set *rs = ti->private;

 md_stop_writes(&rs->md);
}
