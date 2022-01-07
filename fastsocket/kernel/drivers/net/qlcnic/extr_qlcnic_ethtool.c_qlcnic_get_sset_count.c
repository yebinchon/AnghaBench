
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int flags; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;


 int QLCNIC_ESWITCH_ENABLED ;
 int QLCNIC_STATS_LEN ;
 int QLCNIC_TEST_LEN ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_82xx_statistics () ;
 int qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_dev_statistics_len (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_get_sset_count(struct net_device *dev, int sset)
{
 int len;

 struct qlcnic_adapter *adapter = netdev_priv(dev);
 switch (sset) {
 case 128:
  return QLCNIC_TEST_LEN;
 case 129:
  len = qlcnic_dev_statistics_len(adapter) + QLCNIC_STATS_LEN;
  if ((adapter->flags & QLCNIC_ESWITCH_ENABLED) ||
      qlcnic_83xx_check(adapter))
   return len;
  return qlcnic_82xx_statistics();
 default:
  return -EOPNOTSUPP;
 }
}
