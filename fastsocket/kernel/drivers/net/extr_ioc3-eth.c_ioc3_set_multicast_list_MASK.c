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
typedef  unsigned long u64 ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct ioc3_private {int ehar_h; int ehar_l; int /*<<< orphan*/  emcr; struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;
struct dev_mc_list {char* dmi_addr; struct dev_mc_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMCR_PROMISC ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 unsigned long FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ioc3_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct dev_mc_list *dmi = dev->mc_list;
	struct ioc3_private *ip = FUNC5(dev);
	struct ioc3 *ioc3 = ip->regs;
	u64 ehar = 0;
	int i;

	FUNC6(dev);				/* Lock out others. */

	if (dev->flags & IFF_PROMISC) {			/* Set promiscuous.  */
		ip->emcr |= EMCR_PROMISC;
		FUNC4(ip->emcr);
		(void) FUNC1();
	} else {
		ip->emcr &= ~EMCR_PROMISC;
		FUNC4(ip->emcr);			/* Clear promiscuous. */
		(void) FUNC1();

		if ((dev->flags & IFF_ALLMULTI) || (dev->mc_count > 64)) {
			/* Too many for hashing to make sense or we want all
			   multicast packets anyway,  so skip computing all the
			   hashes and just accept all packets.  */
			ip->ehar_h = 0xffffffff;
			ip->ehar_l = 0xffffffff;
		} else {
			for (i = 0; i < dev->mc_count; i++) {
				char *addr = dmi->dmi_addr;
				dmi = dmi->next;

				if (!(*addr & 1))
					continue;

				ehar |= (1UL << FUNC0(addr));
			}
			ip->ehar_h = ehar >> 32;
			ip->ehar_l = ehar & 0xffffffff;
		}
		FUNC2(ip->ehar_h);
		FUNC3(ip->ehar_l);
	}

	FUNC7(dev);			/* Let us get going again. */
}