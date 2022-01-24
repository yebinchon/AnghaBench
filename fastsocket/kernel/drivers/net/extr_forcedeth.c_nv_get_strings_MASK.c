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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct nv_ethtool_str {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nv_estats_str ; 
 int /*<<< orphan*/  nv_etests_str ; 
 int FUNC1 (struct net_device*,int const) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, u32 stringset, u8 *buffer)
{
	switch (stringset) {
	case ETH_SS_STATS:
		FUNC0(buffer, &nv_estats_str, FUNC1(dev, ETH_SS_STATS)*sizeof(struct nv_ethtool_str));
		break;
	case ETH_SS_TEST:
		FUNC0(buffer, &nv_etests_str, FUNC1(dev, ETH_SS_TEST)*sizeof(struct nv_ethtool_str));
		break;
	}
}