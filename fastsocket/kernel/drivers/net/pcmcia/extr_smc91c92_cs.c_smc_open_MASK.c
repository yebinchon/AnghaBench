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
typedef  scalar_t__ u_long ;
struct TYPE_3__ {scalar_t__ expires; scalar_t__ data; int /*<<< orphan*/ * function; } ;
struct smc_private {TYPE_1__ media; scalar_t__ packets_waiting; int /*<<< orphan*/ * saved_skb; struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int /*<<< orphan*/  open; } ;
struct net_device {scalar_t__ base_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BANK_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  media_check ; 
 struct smc_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int pc_debug ; 
 int /*<<< orphan*/  FUNC7 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
    struct smc_private *smc = FUNC5(dev);
    struct pcmcia_device *link = smc->p_dev;

#ifdef PCMCIA_DEBUG
    DEBUG(0, "%s: smc_open(%p), ID/Window %4.4x.\n",
	  dev->name, dev, inw(dev->base_addr + BANK_SELECT));
    if (pc_debug > 1) smc_dump(dev);
#endif

    /* Check that the PCMCIA card is still here. */
    if (!FUNC7(link))
	return -ENODEV;
    /* Physical device present signature. */
    if (FUNC2(link) < 0) {
	FUNC8("smc91c92_cs: Yikes!  Bad chip signature!\n");
	return -ENODEV;
    }
    link->open++;

    FUNC6(dev);
    smc->saved_skb = NULL;
    smc->packets_waiting = 0;

    FUNC10(dev);
    FUNC3(&smc->media);
    smc->media.function = &media_check;
    smc->media.data = (u_long) dev;
    smc->media.expires = jiffies + HZ;
    FUNC1(&smc->media);

    return 0;
}