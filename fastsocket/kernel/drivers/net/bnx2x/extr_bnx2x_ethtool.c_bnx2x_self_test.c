
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;
struct TYPE_2__ {int link_status; int link_up; } ;
struct bnx2x {scalar_t__ recovery_state; TYPE_1__ link_vars; int dev; } ;


 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_NUM_TESTS (struct bnx2x*) ;
 scalar_t__ BNX2X_RECOVERY_DONE ;
 int BP_PORT (struct bnx2x*) ;
 int DP (int ,char*,...) ;
 int ETH_TEST_FL_EXTERNAL_LB ;
 int ETH_TEST_FL_EXTERNAL_LB_DONE ;
 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 int IS_MF (struct bnx2x*) ;
 int LINK_STATUS_SERDES_LINK ;
 int LOAD_DIAG ;
 int LOAD_NORMAL ;
 scalar_t__ NIG_REG_EGRESS_UMP0_IN_EN ;
 int REG_RD (struct bnx2x*,scalar_t__) ;
 int REG_WR (struct bnx2x*,scalar_t__,int ) ;
 int UNLOAD_NORMAL ;
 scalar_t__ bnx2x_link_test (struct bnx2x*,int) ;
 int bnx2x_nic_load (struct bnx2x*,int ) ;
 int bnx2x_nic_unload (struct bnx2x*,int ,int) ;
 int bnx2x_test_ext_loopback (struct bnx2x*) ;
 scalar_t__ bnx2x_test_intr (struct bnx2x*) ;
 int bnx2x_test_loopback (struct bnx2x*) ;
 scalar_t__ bnx2x_test_memory (struct bnx2x*) ;
 scalar_t__ bnx2x_test_nvram (struct bnx2x*) ;
 scalar_t__ bnx2x_test_registers (struct bnx2x*) ;
 int bnx2x_wait_for_link (struct bnx2x*,int,int) ;
 int memset (int*,int ,int) ;
 int msleep (int) ;
 int netdev_err (int ,char*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static void bnx2x_self_test(struct net_device *dev,
       struct ethtool_test *etest, u64 *buf)
{
 struct bnx2x *bp = netdev_priv(dev);
 u8 is_serdes, link_up;
 int rc, cnt = 0;

 if (bp->recovery_state != BNX2X_RECOVERY_DONE) {
  netdev_err(bp->dev,
      "Handling parity error recovery. Try again later\n");
  etest->flags |= ETH_TEST_FL_FAILED;
  return;
 }

 DP(BNX2X_MSG_ETHTOOL,
    "Self-test command parameters: offline = %d, external_lb = %d\n",
    (etest->flags & ETH_TEST_FL_OFFLINE),
    (etest->flags & ETH_TEST_FL_EXTERNAL_LB)>>2);

 memset(buf, 0, sizeof(u64) * BNX2X_NUM_TESTS(bp));

 if (!netif_running(dev)) {
  DP(BNX2X_MSG_ETHTOOL,
     "Can't perform self-test when interface is down\n");
  return;
 }

 is_serdes = (bp->link_vars.link_status & LINK_STATUS_SERDES_LINK) > 0;
 link_up = bp->link_vars.link_up;

 if ((etest->flags & ETH_TEST_FL_OFFLINE) && !IS_MF(bp)) {
  int port = BP_PORT(bp);
  u32 val;


  val = REG_RD(bp, NIG_REG_EGRESS_UMP0_IN_EN + port*4);

  REG_WR(bp, NIG_REG_EGRESS_UMP0_IN_EN + port*4, 0);

  bnx2x_nic_unload(bp, UNLOAD_NORMAL, 0);
  rc = bnx2x_nic_load(bp, LOAD_DIAG);
  if (rc) {
   etest->flags |= ETH_TEST_FL_FAILED;
   DP(BNX2X_MSG_ETHTOOL,
      "Can't perform self-test, nic_load (for offline) failed\n");
   return;
  }


  bnx2x_wait_for_link(bp, 1, is_serdes);

  if (bnx2x_test_registers(bp) != 0) {
   buf[0] = 1;
   etest->flags |= ETH_TEST_FL_FAILED;
  }
  if (bnx2x_test_memory(bp) != 0) {
   buf[1] = 1;
   etest->flags |= ETH_TEST_FL_FAILED;
  }

  buf[2] = bnx2x_test_loopback(bp);
  if (buf[2] != 0)
   etest->flags |= ETH_TEST_FL_FAILED;

  if (etest->flags & ETH_TEST_FL_EXTERNAL_LB) {
   buf[3] = bnx2x_test_ext_loopback(bp);
   if (buf[3] != 0)
    etest->flags |= ETH_TEST_FL_FAILED;
   etest->flags |= ETH_TEST_FL_EXTERNAL_LB_DONE;
  }

  bnx2x_nic_unload(bp, UNLOAD_NORMAL, 0);


  REG_WR(bp, NIG_REG_EGRESS_UMP0_IN_EN + port*4, val);
  rc = bnx2x_nic_load(bp, LOAD_NORMAL);
  if (rc) {
   etest->flags |= ETH_TEST_FL_FAILED;
   DP(BNX2X_MSG_ETHTOOL,
      "Can't perform self-test, nic_load (for online) failed\n");
   return;
  }

  bnx2x_wait_for_link(bp, link_up, is_serdes);
 }
 if (bnx2x_test_nvram(bp) != 0) {
  if (!IS_MF(bp))
   buf[4] = 1;
  else
   buf[0] = 1;
  etest->flags |= ETH_TEST_FL_FAILED;
 }
 if (bnx2x_test_intr(bp) != 0) {
  if (!IS_MF(bp))
   buf[5] = 1;
  else
   buf[1] = 1;
  etest->flags |= ETH_TEST_FL_FAILED;
 }

 if (link_up) {
  cnt = 100;
  while (bnx2x_link_test(bp, is_serdes) && --cnt)
   msleep(20);
 }

 if (!cnt) {
  if (!IS_MF(bp))
   buf[6] = 1;
  else
   buf[2] = 1;
  etest->flags |= ETH_TEST_FL_FAILED;
 }
}
