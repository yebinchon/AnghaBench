
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int dummy; } ;
struct dm_target {struct thin_c* private; } ;


 scalar_t__ dm_noflush_suspending (struct dm_target*) ;
 int do_noflush_start ;
 int noflush_work (struct thin_c*,int ) ;

__attribute__((used)) static void thin_presuspend(struct dm_target *ti)
{
 struct thin_c *tc = ti->private;

 if (dm_noflush_suspending(ti))
  noflush_work(tc, do_noflush_start);
}
