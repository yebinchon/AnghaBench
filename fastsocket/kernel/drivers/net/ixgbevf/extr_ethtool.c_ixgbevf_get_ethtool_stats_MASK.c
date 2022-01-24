#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ixgbevf_adapter {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int stat_offset; int base_stat_offset; int saved_reset_offset; int sizeof_stat; } ;

/* Variables and functions */
 int IXGBE_GLOBAL_STATS_LEN ; 
 TYPE_1__* ixgbe_gstrings_stats ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_adapter*) ; 
 struct ixgbevf_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev,
				      struct ethtool_stats *stats, u64 *data)
{
	struct ixgbevf_adapter *adapter = FUNC1(netdev);
	int i;

	FUNC0(adapter);
	for (i = 0; i < IXGBE_GLOBAL_STATS_LEN; i++) {
		char *p = (char *)adapter +
			ixgbe_gstrings_stats[i].stat_offset;
		char *b = (char *)adapter +
			ixgbe_gstrings_stats[i].base_stat_offset;
		char *r = (char *)adapter +
			ixgbe_gstrings_stats[i].saved_reset_offset;
		data[i] = ((ixgbe_gstrings_stats[i].sizeof_stat ==
			    sizeof(u64)) ? *(u64 *)p : *(u32 *)p) -
			  ((ixgbe_gstrings_stats[i].sizeof_stat ==
			    sizeof(u64)) ? *(u64 *)b : *(u32 *)b) +
			  ((ixgbe_gstrings_stats[i].sizeof_stat ==
			    sizeof(u64)) ? *(u64 *)r : *(u32 *)r);
	}
}