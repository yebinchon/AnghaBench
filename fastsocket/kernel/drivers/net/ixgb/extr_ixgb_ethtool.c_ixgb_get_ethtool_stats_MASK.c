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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ixgb_adapter {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int stat_offset; int sizeof_stat; } ;

/* Variables and functions */
 int IXGB_STATS_LEN ; 
 TYPE_1__* ixgb_gstrings_stats ; 
 int /*<<< orphan*/  FUNC0 (struct ixgb_adapter*) ; 
 struct ixgb_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void
FUNC2(struct net_device *netdev,
		struct ethtool_stats *stats, u64 *data)
{
	struct ixgb_adapter *adapter = FUNC1(netdev);
	int i;

	FUNC0(adapter);
	for (i = 0; i < IXGB_STATS_LEN; i++) {
		char *p = (char *)adapter+ixgb_gstrings_stats[i].stat_offset;
		data[i] = (ixgb_gstrings_stats[i].sizeof_stat ==
			sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
	}
}