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
struct skge_port {TYPE_1__* hw; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {scalar_t__ chip_id; } ;

/* Variables and functions */
 scalar_t__ CHIP_ID_GENESIS ; 
 int /*<<< orphan*/  FUNC0 (struct skge_port*,int /*<<< orphan*/ *) ; 
 struct skge_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct skge_port*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
				   struct ethtool_stats *stats, u64 *data)
{
	struct skge_port *skge = FUNC1(dev);

	if (skge->hw->chip_id == CHIP_ID_GENESIS)
		FUNC0(skge, data);
	else
		FUNC2(skge, data);
}