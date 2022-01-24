#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {int /*<<< orphan*/  open; } ;
struct net_device {unsigned int base_addr; } ;
struct TYPE_3__ {struct pcmcia_device* p_dev; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct net_device*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  XIRCREG1_IMR0 ; 
 int /*<<< orphan*/  XIRCREG4_GPR1 ; 
 int /*<<< orphan*/  XIRCREG_CR ; 
 TYPE_1__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    local_info_t *lp = FUNC3(dev);
    struct pcmcia_device *link = lp->p_dev;

    FUNC0(0, "do_stop(%p)\n", dev);

    if (!link)
	return -ENODEV;

    FUNC4(dev);

    FUNC2(0);
    FUNC1(XIRCREG_CR, 0);  /* disable interrupts */
    FUNC2(0x01);
    FUNC1(XIRCREG1_IMR0, 0x00); /* forbid all ints */
    FUNC2(4);
    FUNC1(XIRCREG4_GPR1, 0);	/* clear bit 0: power down */
    FUNC2(0);

    link->open--;
    return 0;
}