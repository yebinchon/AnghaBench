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
typedef  scalar_t__ u32 ;
struct net_device_stats {int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  collisions; int /*<<< orphan*/  tx_dropped; } ;
struct sh_eth_private {struct net_device_stats stats; } ;
struct net_device {scalar_t__ base_addr; } ;

/* Variables and functions */
 scalar_t__ CDCR ; 
 scalar_t__ CEECR ; 
 scalar_t__ CERCR ; 
 scalar_t__ CNDCR ; 
 scalar_t__ LCCR ; 
 scalar_t__ TROCR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct sh_eth_private* FUNC2 (struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *FUNC3(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC2(ndev);
	u32 ioaddr = ndev->base_addr;

	mdp->stats.tx_dropped += FUNC0(ioaddr + TROCR);
	FUNC1(0, ioaddr + TROCR);	/* (write clear) */
	mdp->stats.collisions += FUNC0(ioaddr + CDCR);
	FUNC1(0, ioaddr + CDCR);	/* (write clear) */
	mdp->stats.tx_carrier_errors += FUNC0(ioaddr + LCCR);
	FUNC1(0, ioaddr + LCCR);	/* (write clear) */
#if defined(CONFIG_CPU_SUBTYPE_SH7763)
	mdp->stats.tx_carrier_errors += ctrl_inl(ioaddr + CERCR);/* CERCR */
	ctrl_outl(0, ioaddr + CERCR);	/* (write clear) */
	mdp->stats.tx_carrier_errors += ctrl_inl(ioaddr + CEECR);/* CEECR */
	ctrl_outl(0, ioaddr + CEECR);	/* (write clear) */
#else
	mdp->stats.tx_carrier_errors += FUNC0(ioaddr + CNDCR);
	FUNC1(0, ioaddr + CNDCR);	/* (write clear) */
#endif
	return &mdp->stats;
}