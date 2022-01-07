
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_set {scalar_t__ stats; } ;


 unsigned int S_NR_STATS ;
 int atomic_set (scalar_t__,int ) ;

__attribute__((used)) static void stats_reset(struct raid_set *rs)
{
 unsigned s = S_NR_STATS;

 while (s--)
  atomic_set(rs->stats + s, 0);
}
