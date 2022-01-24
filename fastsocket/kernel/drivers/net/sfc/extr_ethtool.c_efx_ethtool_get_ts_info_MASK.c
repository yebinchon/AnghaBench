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
struct net_device {int dummy; } ;
struct ethtool_ts_info {int so_timestamping; int phc_index; } ;
struct efx_nic {int dummy; } ;

/* Variables and functions */
 int SOF_TIMESTAMPING_RX_SOFTWARE ; 
 int SOF_TIMESTAMPING_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,struct ethtool_ts_info*) ; 
 struct efx_nic* FUNC1 (struct net_device*) ; 

int FUNC2(struct net_device *net_dev,
			    struct ethtool_ts_info *ts_info)
{
	struct efx_nic *efx = FUNC1(net_dev);

	/* Software capabilities */
	ts_info->so_timestamping = (SOF_TIMESTAMPING_RX_SOFTWARE |
				    SOF_TIMESTAMPING_SOFTWARE);
	ts_info->phc_index = -1;

	FUNC0(efx, ts_info);
	return 0;
}