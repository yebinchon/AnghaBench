#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  temp_et_coalesce ;
struct net_device {int dummy; } ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_hw_tune_timer {int /*<<< orphan*/  timer_in_use; int /*<<< orphan*/  timer_in_use_max; int /*<<< orphan*/  timer_in_use_min; int /*<<< orphan*/  threshold_high; int /*<<< orphan*/  threshold_target; int /*<<< orphan*/  threshold_low; } ;
struct nes_device {struct nes_adapter* nesadapter; } ;
struct nes_adapter {int /*<<< orphan*/  periodic_timer_lock; scalar_t__ et_use_adaptive_rx_coalesce; int /*<<< orphan*/  et_pkt_rate_low; int /*<<< orphan*/  et_rate_sample_interval; int /*<<< orphan*/  et_rx_coalesce_usecs_irq; struct nes_hw_tune_timer tune_timer; } ;
struct ethtool_coalesce {int /*<<< orphan*/  rx_coalesce_usecs_irq; int /*<<< orphan*/  rx_coalesce_usecs_high; int /*<<< orphan*/  rx_coalesce_usecs_low; int /*<<< orphan*/  rx_max_coalesced_frames_high; int /*<<< orphan*/  rx_max_coalesced_frames_irq; int /*<<< orphan*/  rx_max_coalesced_frames_low; int /*<<< orphan*/  pkt_rate_low; int /*<<< orphan*/  rate_sample_interval; scalar_t__ use_adaptive_rx_coalesce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ethtool_coalesce*,struct ethtool_coalesce*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_coalesce*,int /*<<< orphan*/ ,int) ; 
 struct nes_vnic* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
		struct ethtool_coalesce	*et_coalesce)
{
	struct nes_vnic	*nesvnic = FUNC2(netdev);
	struct nes_device *nesdev = nesvnic->nesdev;
	struct nes_adapter *nesadapter = nesdev->nesadapter;
	struct ethtool_coalesce	temp_et_coalesce;
	struct nes_hw_tune_timer *shared_timer = &nesadapter->tune_timer;
	unsigned long flags;

	FUNC1(&temp_et_coalesce, 0, sizeof(temp_et_coalesce));
	temp_et_coalesce.rx_coalesce_usecs_irq    = nesadapter->et_rx_coalesce_usecs_irq;
	temp_et_coalesce.use_adaptive_rx_coalesce = nesadapter->et_use_adaptive_rx_coalesce;
	temp_et_coalesce.rate_sample_interval     = nesadapter->et_rate_sample_interval;
	temp_et_coalesce.pkt_rate_low =	nesadapter->et_pkt_rate_low;
	FUNC3(&nesadapter->periodic_timer_lock,	flags);
	temp_et_coalesce.rx_max_coalesced_frames_low  = shared_timer->threshold_low;
	temp_et_coalesce.rx_max_coalesced_frames_irq  = shared_timer->threshold_target;
	temp_et_coalesce.rx_max_coalesced_frames_high = shared_timer->threshold_high;
	temp_et_coalesce.rx_coalesce_usecs_low  = shared_timer->timer_in_use_min;
	temp_et_coalesce.rx_coalesce_usecs_high = shared_timer->timer_in_use_max;
	if (nesadapter->et_use_adaptive_rx_coalesce) {
		temp_et_coalesce.rx_coalesce_usecs_irq = shared_timer->timer_in_use;
	}
	FUNC4(&nesadapter->periodic_timer_lock, flags);
	FUNC0(et_coalesce, &temp_et_coalesce, sizeof(*et_coalesce));
	return 0;
}