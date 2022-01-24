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
struct s6gmac {int* stats; int* carry; int /*<<< orphan*/  lock; } ;
struct net_device_stats {scalar_t__ tx_aborted_errors; int /*<<< orphan*/  tx_errors; scalar_t__ rx_missed_errors; scalar_t__ rx_length_errors; scalar_t__ rx_frame_errors; scalar_t__ rx_crc_errors; scalar_t__ rx_errors; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int S6_GMAC_STAT_SIZE_MIN ; 
 struct s6gmac* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct s6gmac*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct s6gmac*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ ** statinf ; 

__attribute__((used)) static struct net_device_stats *FUNC5(struct net_device *dev)
{
	struct s6gmac *pd = FUNC0(dev);
	struct net_device_stats *st = (struct net_device_stats *)&pd->stats;
	int i;
	do {
		unsigned long flags;
		FUNC3(&pd->lock, flags);
		for (i = 0; i < sizeof(pd->stats) / sizeof(unsigned long); i++)
			pd->stats[i] =
				pd->carry[i] << (S6_GMAC_STAT_SIZE_MIN - 1);
		FUNC1(pd, &statinf[0][0]);
		FUNC1(pd, &statinf[1][0]);
		i = FUNC2(pd, 0) |
			FUNC2(pd, 1);
		FUNC4(&pd->lock, flags);
	} while (i);
	st->rx_errors = st->rx_crc_errors +
			st->rx_frame_errors +
			st->rx_length_errors +
			st->rx_missed_errors;
	st->tx_errors += st->tx_aborted_errors;
	return st;
}