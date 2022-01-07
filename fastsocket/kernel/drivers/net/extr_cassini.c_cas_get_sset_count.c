
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int CAS_NUM_STAT_KEYS ;
 int EOPNOTSUPP ;


__attribute__((used)) static int cas_get_sset_count(struct net_device *dev, int sset)
{
 switch (sset) {
 case 128:
  return CAS_NUM_STAT_KEYS;
 default:
  return -EOPNOTSUPP;
 }
}
