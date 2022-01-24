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
struct net_device {unsigned int base_addr; int flags; int mc_count; } ;

/* Variables and functions */
 unsigned int EnableRecv ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 unsigned int Offline ; 
 unsigned int Online ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  XIRCREG40_CMD0 ; 
 int /*<<< orphan*/  XIRCREG42_SWC1 ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static void
FUNC4(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    unsigned value;

    FUNC2(0x42);
    value = FUNC0(XIRCREG42_SWC1) & 0xC0;

    if (dev->flags & IFF_PROMISC) { /* snoop */
	FUNC1(XIRCREG42_SWC1, value | 0x06); /* set MPE and PME */
    } else if (dev->mc_count > 9 || (dev->flags & IFF_ALLMULTI)) {
	FUNC1(XIRCREG42_SWC1, value | 0x02); /* set MPE */
    } else if (dev->mc_count) {
	/* the chip can filter 9 addresses perfectly */
	FUNC1(XIRCREG42_SWC1, value | 0x01);
	FUNC2(0x40);
	FUNC1(XIRCREG40_CMD0, Offline);
	FUNC3(dev);
	FUNC2(0x40);
	FUNC1(XIRCREG40_CMD0, EnableRecv | Online);
    } else { /* standard usage */
	FUNC1(XIRCREG42_SWC1, value | 0x00);
    }
    FUNC2(0);
}