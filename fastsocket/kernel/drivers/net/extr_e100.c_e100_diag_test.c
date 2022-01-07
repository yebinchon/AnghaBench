
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nic {int mii; } ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;
struct ethtool_cmd {int dummy; } ;


 int E100_TEST_LEN ;
 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 int e100_down (struct nic*) ;
 int e100_eeprom_load (struct nic*) ;
 int e100_loopback_test (struct nic*,int ) ;
 int e100_self_test (struct nic*) ;
 int e100_up (struct nic*) ;
 int lb_mac ;
 int lb_phy ;
 int memset (int*,int ,int) ;
 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 int mii_ethtool_sset (int *,struct ethtool_cmd*) ;
 int mii_link_ok (int *) ;
 int msleep_interruptible (int) ;
 struct nic* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static void e100_diag_test(struct net_device *netdev,
 struct ethtool_test *test, u64 *data)
{
 struct ethtool_cmd cmd;
 struct nic *nic = netdev_priv(netdev);
 int i, err;

 memset(data, 0, E100_TEST_LEN * sizeof(u64));
 data[0] = !mii_link_ok(&nic->mii);
 data[1] = e100_eeprom_load(nic);
 if (test->flags & ETH_TEST_FL_OFFLINE) {


  err = mii_ethtool_gset(&nic->mii, &cmd);

  if (netif_running(netdev))
   e100_down(nic);
  data[2] = e100_self_test(nic);
  data[3] = e100_loopback_test(nic, lb_mac);
  data[4] = e100_loopback_test(nic, lb_phy);


  err = mii_ethtool_sset(&nic->mii, &cmd);

  if (netif_running(netdev))
   e100_up(nic);
 }
 for (i = 0; i < E100_TEST_LEN; i++)
  test->flags |= data[i] ? ETH_TEST_FL_FAILED : 0;

 msleep_interruptible(4 * 1000);
}
