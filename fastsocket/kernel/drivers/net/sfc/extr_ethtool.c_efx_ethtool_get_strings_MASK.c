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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ethtool_string {int /*<<< orphan*/  name; } ;
struct efx_nic {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EFX_ETHTOOL_NUM_STATS ; 
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ *,struct ethtool_string*,int /*<<< orphan*/ *) ; 
 TYPE_1__* efx_ethtool_stats ; 
 struct efx_nic* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *net_dev,
				    u32 string_set, u8 *strings)
{
	struct efx_nic *efx = FUNC1(net_dev);
	struct ethtool_string *ethtool_strings =
		(struct ethtool_string *)strings;
	int i;

	switch (string_set) {
	case ETH_SS_STATS:
		for (i = 0; i < EFX_ETHTOOL_NUM_STATS; i++)
			FUNC2(ethtool_strings[i].name,
				efx_ethtool_stats[i].name,
				sizeof(ethtool_strings[i].name));
		break;
	case ETH_SS_TEST:
		FUNC0(efx, NULL,
					    ethtool_strings, NULL);
		break;
	default:
		/* No other string sets */
		break;
	}
}