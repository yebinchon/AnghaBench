
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_set {int md; } ;
struct dm_target {struct raid_set* private; } ;


 int mddev_suspend (int *) ;

__attribute__((used)) static void raid_postsuspend(struct dm_target *ti)
{
 struct raid_set *rs = ti->private;

 mddev_suspend(&rs->md);
}
