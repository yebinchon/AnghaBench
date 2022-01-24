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
struct pcmcia_device {int /*<<< orphan*/  open; } ;
struct net_device {unsigned int base_addr; int if_port; int /*<<< orphan*/  name; } ;
struct el3_private {int /*<<< orphan*/  media; struct pcmcia_device* p_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ EL3_CMD ; 
 scalar_t__ EL3_STATUS ; 
 int RxDisable ; 
 int StatsDisable ; 
 int StopCoax ; 
 int TxDisable ; 
 scalar_t__ WN0_IRQ ; 
 scalar_t__ WN4_MEDIA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 struct el3_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 scalar_t__ FUNC7 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
    struct el3_private *lp = FUNC4(dev);
    struct pcmcia_device *link = lp->p_dev;
    unsigned int ioaddr = dev->base_addr;
    
    FUNC0(1, "%s: shutting down ethercard.\n", dev->name);

    if (FUNC7(link)) {
	/* Turn off statistics ASAP.  We update dev->stats below. */
	FUNC6(StatsDisable, ioaddr + EL3_CMD);
	
	/* Disable the receiver and transmitter. */
	FUNC6(RxDisable, ioaddr + EL3_CMD);
	FUNC6(TxDisable, ioaddr + EL3_CMD);
	
	if (dev->if_port == 2)
	    /* Turn off thinnet power.  Green! */
	    FUNC6(StopCoax, ioaddr + EL3_CMD);
	else if (dev->if_port == 1) {
	    /* Disable link beat and jabber */
	    FUNC1(4);
	    FUNC6(0, ioaddr + WN4_MEDIA);
	}
	
	/* Switching back to window 0 disables the IRQ. */
	FUNC1(0);
	/* But we explicitly zero the IRQ line select anyway. */
	FUNC6(0x0f00, ioaddr + WN0_IRQ);
        
	/* Check if the card still exists */
	if ((FUNC3(ioaddr+EL3_STATUS) & 0xe000) == 0x2000)
	    FUNC8(dev);
    }

    link->open--;
    FUNC5(dev);
    FUNC2(&lp->media);
    
    return 0;
}