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
struct net_device {int dummy; } ;
struct ixgbe_adapter {TYPE_1__* ring_feature; } ;
struct ethtool_channels {unsigned int combined_count; scalar_t__ other_count; scalar_t__ tx_count; scalar_t__ rx_count; } ;
struct TYPE_2__ {unsigned int limit; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IXGBE_FCRETA_SIZE ; 
 unsigned int IXGBE_MAX_RSS_INDICES ; 
 scalar_t__ NON_Q_VECTORS ; 
 size_t RING_F_FCOE ; 
 size_t RING_F_FDIR ; 
 size_t RING_F_RSS ; 
 unsigned int FUNC0 (struct ixgbe_adapter*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct ixgbe_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			      struct ethtool_channels *ch)
{
	struct ixgbe_adapter *adapter = FUNC3(dev);
	unsigned int count = ch->combined_count;

	/* verify they are not requesting separate vectors */
	if (!count || ch->rx_count || ch->tx_count)
		return -EINVAL;

	/* verify other_count has not changed */
	if (ch->other_count != NON_Q_VECTORS)
		return -EINVAL;

	/* verify the number of channels does not exceed hardware limits */
	if (count > FUNC0(adapter))
		return -EINVAL;

	/* update feature limits from largest to smallest supported values */
	adapter->ring_feature[RING_F_FDIR].limit = count;

	/* cap RSS limit at 16 */
	if (count > IXGBE_MAX_RSS_INDICES)
		count = IXGBE_MAX_RSS_INDICES;
	adapter->ring_feature[RING_F_RSS].limit = count;

#ifdef IXGBE_FCOE
	/* cap FCoE limit at 8 */
	if (count > IXGBE_FCRETA_SIZE)
		count = IXGBE_FCRETA_SIZE;
	adapter->ring_feature[RING_F_FCOE].limit = count;

#endif
	/* use setup TC to update any traffic class queue mapping */
	return FUNC1(dev, FUNC2(dev));
}