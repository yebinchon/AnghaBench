
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_adapter {TYPE_1__* netdev; int * ptp_clock; int * ptp_tx_skb; int ptp_tx_work; int flags2; int state; } ;
struct TYPE_2__ {int name; } ;


 int IXGBE_FLAG2_PTP_PPS_ENABLED ;
 int __IXGBE_PTP_RUNNING ;
 int cancel_work_sync (int *) ;
 int dev_kfree_skb_any (int *) ;
 int e_dev_info (char*,int ) ;
 int ixgbe_ptp_setup_sdp (struct ixgbe_adapter*) ;
 int ptp_clock_unregister (int *) ;
 int test_and_clear_bit (int ,int *) ;

void ixgbe_ptp_stop(struct ixgbe_adapter *adapter)
{

 if (!test_and_clear_bit(__IXGBE_PTP_RUNNING, &adapter->state))
  return;


 adapter->flags2 &= ~IXGBE_FLAG2_PTP_PPS_ENABLED;
 ixgbe_ptp_setup_sdp(adapter);

 cancel_work_sync(&adapter->ptp_tx_work);
 if (adapter->ptp_tx_skb) {
  dev_kfree_skb_any(adapter->ptp_tx_skb);
  adapter->ptp_tx_skb = ((void*)0);
 }

 if (adapter->ptp_clock) {
  ptp_clock_unregister(adapter->ptp_clock);
  adapter->ptp_clock = ((void*)0);
  e_dev_info("removed PHC on %s\n",
      adapter->netdev->name);
 }
}
