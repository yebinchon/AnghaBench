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
struct lance_regs {int /*<<< orphan*/  rdp; int /*<<< orphan*/  rap; } ;
struct lance_private {int /*<<< orphan*/  multicast_timer; struct lance_regs* ll; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_AMIGA_PORTS ; 
 int /*<<< orphan*/  LE_C0_STOP ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct lance_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4 (struct net_device *dev)
{
	struct lance_private *lp = FUNC2(dev);
	volatile struct lance_regs *ll = lp->ll;

	FUNC3(dev);
	FUNC0(&lp->multicast_timer);

	/* Stop the card */
	ll->rap = LE_CSR0;
	ll->rdp = LE_C0_STOP;

	FUNC1(IRQ_AMIGA_PORTS, dev);
	return 0;
}