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
struct smc_private {scalar_t__ manfid; scalar_t__ cardid; } ;
struct pcmcia_device {scalar_t__ open; struct net_device* priv; } ;
struct net_device {int base_addr; } ;

/* Variables and functions */
 scalar_t__ MANFID_MEGAHERTZ ; 
 scalar_t__ MANFID_MOTOROLA ; 
 scalar_t__ MANFID_OSITECH ; 
 scalar_t__ MANFID_PSION ; 
 int OSITECH_AUI_PWR ; 
 int OSITECH_RESET_ISR ; 
 scalar_t__ PRODID_MEGAHERTZ_EM3288 ; 
 scalar_t__ PRODID_OSITECH_SEVEN ; 
 scalar_t__ PRODID_PSION_NET100 ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 struct smc_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct pcmcia_device *link)
{
	struct net_device *dev = link->priv;
	struct smc_private *smc = FUNC2(dev);
	int i;

	if ((smc->manfid == MANFID_MEGAHERTZ) &&
	    (smc->cardid == PRODID_MEGAHERTZ_EM3288))
		FUNC0(link);
	if (smc->manfid == MANFID_MOTOROLA)
		FUNC1(link);
	if ((smc->manfid == MANFID_OSITECH) &&
	    (smc->cardid != PRODID_OSITECH_SEVEN)) {
		/* Power up the card and enable interrupts */
		FUNC6(0x0300, dev->base_addr-0x10+OSITECH_AUI_PWR);
		FUNC6(0x0300, dev->base_addr-0x10+OSITECH_RESET_ISR);
	}
	if (((smc->manfid == MANFID_OSITECH) &&
	     (smc->cardid == PRODID_OSITECH_SEVEN)) ||
	    ((smc->manfid == MANFID_PSION) &&
	     (smc->cardid == PRODID_PSION_NET100))) {
		i = FUNC4(link);
		if (i) {
			FUNC5("smc91c92_cs: Failed to load firmware\n");
			return i;
		}
	}
	if (link->open) {
		FUNC7(dev);
		FUNC3(dev);
	}

	return 0;
}