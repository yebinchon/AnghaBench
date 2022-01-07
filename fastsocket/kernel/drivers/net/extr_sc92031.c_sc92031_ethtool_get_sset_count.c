
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

 int SILAN_STATS_NUM ;

__attribute__((used)) static int sc92031_ethtool_get_sset_count(struct net_device *dev, int sset)
{
 switch (sset) {
 case 128:
  return SILAN_STATS_NUM;
 default:
  return -EOPNOTSUPP;
 }
}
