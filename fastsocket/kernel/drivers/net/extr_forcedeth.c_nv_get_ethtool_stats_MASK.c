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
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct fe_priv {int /*<<< orphan*/  estats; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_SS_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct fe_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, struct ethtool_stats *estats, u64 *buffer)
{
	struct fe_priv *np = FUNC1(dev);

	/* update stats */
	FUNC2((unsigned long)dev);

	FUNC0(buffer, &np->estats, FUNC3(dev, ETH_SS_STATS)*sizeof(u64));
}