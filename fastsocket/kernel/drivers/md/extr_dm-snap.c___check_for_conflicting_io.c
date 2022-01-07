
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int dummy; } ;
typedef int chunk_t ;


 scalar_t__ __chunk_is_tracked (struct dm_snapshot*,int ) ;
 int msleep (int) ;

__attribute__((used)) static void __check_for_conflicting_io(struct dm_snapshot *s, chunk_t chunk)
{
 while (__chunk_is_tracked(s, chunk))
  msleep(1);
}
