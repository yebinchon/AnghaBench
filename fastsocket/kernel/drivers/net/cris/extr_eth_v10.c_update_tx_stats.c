
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int collisions; } ;


 scalar_t__ IO_EXTRACT (unsigned long*,int ,unsigned long) ;
 unsigned long* R_TR_COUNTERS ;
 int multiple_col ;
 int single_col ;

__attribute__((used)) static void
update_tx_stats(struct net_device_stats *es)
{
 unsigned long r = *R_TR_COUNTERS;

 es->collisions +=
  IO_EXTRACT(R_TR_COUNTERS, single_col, r) +
  IO_EXTRACT(R_TR_COUNTERS, multiple_col, r);
}
