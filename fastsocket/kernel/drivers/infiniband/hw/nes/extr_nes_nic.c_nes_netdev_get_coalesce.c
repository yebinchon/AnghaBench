
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp_et_coalesce ;
struct net_device {int dummy; } ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_hw_tune_timer {int timer_in_use; int timer_in_use_max; int timer_in_use_min; int threshold_high; int threshold_target; int threshold_low; } ;
struct nes_device {struct nes_adapter* nesadapter; } ;
struct nes_adapter {int periodic_timer_lock; scalar_t__ et_use_adaptive_rx_coalesce; int et_pkt_rate_low; int et_rate_sample_interval; int et_rx_coalesce_usecs_irq; struct nes_hw_tune_timer tune_timer; } ;
struct ethtool_coalesce {int rx_coalesce_usecs_irq; int rx_coalesce_usecs_high; int rx_coalesce_usecs_low; int rx_max_coalesced_frames_high; int rx_max_coalesced_frames_irq; int rx_max_coalesced_frames_low; int pkt_rate_low; int rate_sample_interval; scalar_t__ use_adaptive_rx_coalesce; } ;


 int memcpy (struct ethtool_coalesce*,struct ethtool_coalesce*,int) ;
 int memset (struct ethtool_coalesce*,int ,int) ;
 struct nes_vnic* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int nes_netdev_get_coalesce(struct net_device *netdev,
  struct ethtool_coalesce *et_coalesce)
{
 struct nes_vnic *nesvnic = netdev_priv(netdev);
 struct nes_device *nesdev = nesvnic->nesdev;
 struct nes_adapter *nesadapter = nesdev->nesadapter;
 struct ethtool_coalesce temp_et_coalesce;
 struct nes_hw_tune_timer *shared_timer = &nesadapter->tune_timer;
 unsigned long flags;

 memset(&temp_et_coalesce, 0, sizeof(temp_et_coalesce));
 temp_et_coalesce.rx_coalesce_usecs_irq = nesadapter->et_rx_coalesce_usecs_irq;
 temp_et_coalesce.use_adaptive_rx_coalesce = nesadapter->et_use_adaptive_rx_coalesce;
 temp_et_coalesce.rate_sample_interval = nesadapter->et_rate_sample_interval;
 temp_et_coalesce.pkt_rate_low = nesadapter->et_pkt_rate_low;
 spin_lock_irqsave(&nesadapter->periodic_timer_lock, flags);
 temp_et_coalesce.rx_max_coalesced_frames_low = shared_timer->threshold_low;
 temp_et_coalesce.rx_max_coalesced_frames_irq = shared_timer->threshold_target;
 temp_et_coalesce.rx_max_coalesced_frames_high = shared_timer->threshold_high;
 temp_et_coalesce.rx_coalesce_usecs_low = shared_timer->timer_in_use_min;
 temp_et_coalesce.rx_coalesce_usecs_high = shared_timer->timer_in_use_max;
 if (nesadapter->et_use_adaptive_rx_coalesce) {
  temp_et_coalesce.rx_coalesce_usecs_irq = shared_timer->timer_in_use;
 }
 spin_unlock_irqrestore(&nesadapter->periodic_timer_lock, flags);
 memcpy(et_coalesce, &temp_et_coalesce, sizeof(*et_coalesce));
 return 0;
}
