
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int BNX2_NUM_STATS ;
 int BNX2_NUM_TESTS ;
 int EOPNOTSUPP ;



__attribute__((used)) static int
bnx2_get_sset_count(struct net_device *dev, int sset)
{
 switch (sset) {
 case 128:
  return BNX2_NUM_TESTS;
 case 129:
  return BNX2_NUM_STATS;
 default:
  return -EOPNOTSUPP;
 }
}
