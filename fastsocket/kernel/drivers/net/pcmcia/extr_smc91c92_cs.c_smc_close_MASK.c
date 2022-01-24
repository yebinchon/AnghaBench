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
struct smc_private {int /*<<< orphan*/  media; struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int /*<<< orphan*/  open; } ;
struct net_device {unsigned int base_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BANK_SELECT ; 
 scalar_t__ CONTROL ; 
 int /*<<< orphan*/  CTL_POWERDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ INTERRUPT ; 
 scalar_t__ RCR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TCR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 struct smc_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
    struct smc_private *smc = FUNC5(dev);
    struct pcmcia_device *link = smc->p_dev;
    unsigned int ioaddr = dev->base_addr;

    FUNC0(0, "%s: smc_close(), status %4.4x.\n",
	  dev->name, FUNC3(ioaddr + BANK_SELECT));

    FUNC6(dev);

    /* Shut off all interrupts, and turn off the Tx and Rx sections.
       Don't bother to check for chip present. */
    FUNC1(2);	/* Nominally paranoia, but do no assume... */
    FUNC7(0, ioaddr + INTERRUPT);
    FUNC1(0);
    FUNC4(0xff00, ioaddr + RCR);
    FUNC4(0xff00, ioaddr + TCR);

    /* Put the chip into power-down mode. */
    FUNC1(1);
    FUNC7(CTL_POWERDOWN, ioaddr + CONTROL );

    link->open--;
    FUNC2(&smc->media);

    return 0;
}