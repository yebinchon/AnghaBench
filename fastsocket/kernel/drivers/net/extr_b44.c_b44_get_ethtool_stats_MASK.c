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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {scalar_t__ tx_good_octets; } ;
struct b44 {int /*<<< orphan*/  lock; TYPE_1__ hw_stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b44_gstrings ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 struct b44* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev,
				  struct ethtool_stats *stats, u64 *data)
{
	struct b44 *bp = FUNC2(dev);
	u32 *val = &bp->hw_stats.tx_good_octets;
	u32 i;

	FUNC3(&bp->lock);

	FUNC1(bp);

	for (i = 0; i < FUNC0(b44_gstrings); i++)
		*data++ = *val++;

	FUNC4(&bp->lock);
}