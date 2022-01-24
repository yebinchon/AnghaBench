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
struct pcmcia_device {struct com20020_dev_t* priv; scalar_t__ dev_node; } ;
struct net_device {scalar_t__ irq; } ;
struct com20020_dev_t {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct com20020_dev_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct pcmcia_device *link)
{
    struct com20020_dev_t *info = link->priv;
    struct net_device *dev = info->dev;

    FUNC0(1,"detach...\n");

    FUNC0(0, "com20020_detach(0x%p)\n", link);

    if (link->dev_node) {
	FUNC0(1,"unregister...\n");

	FUNC5(dev);

	/*
	 * this is necessary because we register our IRQ separately
	 * from card services.
	 */
	if (dev->irq)
	    FUNC2(dev->irq, dev);
    }

    FUNC1(link);

    /* Unlink device structure, free bits */
    FUNC0(1,"unlinking...\n");
    if (link->priv)
    {
	dev = info->dev;
	if (dev)
	{
	    FUNC0(1,"kfree...\n");
	    FUNC3(dev);
	}
	FUNC0(1,"kfree2...\n");
	FUNC4(info);
    }

}