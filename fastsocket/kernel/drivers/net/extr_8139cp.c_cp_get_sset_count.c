
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int CP_NUM_STATS ;
 int EOPNOTSUPP ;


__attribute__((used)) static int cp_get_sset_count (struct net_device *dev, int sset)
{
 switch (sset) {
 case 128:
  return CP_NUM_STATS;
 default:
  return -EOPNOTSUPP;
 }
}
