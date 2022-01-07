
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
struct TYPE_8__ {TYPE_3__ mac; } ;
struct igb_adapter {int flags; TYPE_2__* netdev; TYPE_1__* pdev; scalar_t__ ptp_clock; int * ptp_tx_skb; int ptp_tx_work; int ptp_overflow_work; TYPE_4__ hw; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int dev; } ;


 int IGB_FLAG_PTP ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int dev_info (int *,char*,int ) ;
 int dev_kfree_skb_any (int *) ;






 int ptp_clock_unregister (scalar_t__) ;

void igb_ptp_stop(struct igb_adapter *adapter)
{
 switch (adapter->hw.mac.type) {
 case 133:
 case 132:
 case 128:
 case 129:
  cancel_delayed_work_sync(&adapter->ptp_overflow_work);
  break;
 case 131:
 case 130:

  break;
 default:
  return;
 }

 cancel_work_sync(&adapter->ptp_tx_work);
 if (adapter->ptp_tx_skb) {
  dev_kfree_skb_any(adapter->ptp_tx_skb);
  adapter->ptp_tx_skb = ((void*)0);
 }

 if (adapter->ptp_clock) {
  ptp_clock_unregister(adapter->ptp_clock);
  dev_info(&adapter->pdev->dev, "removed PHC on %s\n",
    adapter->netdev->name);
  adapter->flags &= ~IGB_FLAG_PTP;
 }
}
