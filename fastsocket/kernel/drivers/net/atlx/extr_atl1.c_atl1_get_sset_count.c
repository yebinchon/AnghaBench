
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;

 int atl1_gstrings_stats ;

__attribute__((used)) static int atl1_get_sset_count(struct net_device *netdev, int sset)
{
 switch (sset) {
 case 128:
  return ARRAY_SIZE(atl1_gstrings_stats);
 default:
  return -EOPNOTSUPP;
 }
}
