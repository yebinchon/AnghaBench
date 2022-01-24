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

/* Variables and functions */
 int EFX_ETHTOOL_NUM_STATS ; 
 int EINVAL ; 
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *net_dev,
				      int string_set)
{
	switch (string_set) {
	case ETH_SS_STATS:
		return EFX_ETHTOOL_NUM_STATS;
	case ETH_SS_TEST:
		return FUNC0(FUNC1(net_dev),
						   NULL, NULL, NULL);
	default:
		return -EINVAL;
	}
}