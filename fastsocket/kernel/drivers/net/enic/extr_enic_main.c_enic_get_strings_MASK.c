#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_GSTRING_LEN ; 
#define  ETH_SS_STATS 128 
 unsigned int enic_n_rx_stats ; 
 unsigned int enic_n_tx_stats ; 
 TYPE_2__* enic_rx_stats ; 
 TYPE_1__* enic_tx_stats ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct net_device *netdev, u32 stringset, u8 *data)
{
	unsigned int i;

	switch (stringset) {
	case ETH_SS_STATS:
		for (i = 0; i < enic_n_tx_stats; i++) {
			FUNC0(data, enic_tx_stats[i].name, ETH_GSTRING_LEN);
			data += ETH_GSTRING_LEN;
		}
		for (i = 0; i < enic_n_rx_stats; i++) {
			FUNC0(data, enic_rx_stats[i].name, ETH_GSTRING_LEN);
			data += ETH_GSTRING_LEN;
		}
		break;
	}
}