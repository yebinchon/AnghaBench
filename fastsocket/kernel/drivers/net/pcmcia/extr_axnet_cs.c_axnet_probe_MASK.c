#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  IntType; int /*<<< orphan*/  Attributes; } ;
struct TYPE_5__ {int /*<<< orphan*/  IRQInfo1; int /*<<< orphan*/  Attributes; } ;
struct pcmcia_device {TYPE_2__ conf; TYPE_1__ irq; struct net_device* priv; } ;
struct net_device {int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; } ;
struct ei_device {int /*<<< orphan*/  page_lock; } ;
struct TYPE_7__ {struct pcmcia_device* p_dev; } ;
typedef  TYPE_3__ axnet_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_ENABLE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INT_MEMORY_AND_IO ; 
 int /*<<< orphan*/  IRQ_LEVEL_ID ; 
 int /*<<< orphan*/  IRQ_TYPE_DYNAMIC_SHARING ; 
 TYPE_3__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TX_TIMEOUT ; 
 struct net_device* FUNC3 (int) ; 
 int FUNC4 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  axnet_netdev_ops ; 
 int /*<<< orphan*/  netdev_ethtool_ops ; 
 struct ei_device* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct pcmcia_device *link)
{
    axnet_dev_t *info;
    struct net_device *dev;
    struct ei_device *ei_local;

    FUNC0(0, "axnet_attach()\n");

    dev = FUNC3(sizeof(struct ei_device) + sizeof(axnet_dev_t));
    if (!dev)
	return -ENOMEM;

    ei_local = FUNC5(dev);
    FUNC6(&ei_local->page_lock);

    info = FUNC1(dev);
    info->p_dev = link;
    link->priv = dev;
    link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING;
    link->irq.IRQInfo1 = IRQ_LEVEL_ID;
    link->conf.Attributes = CONF_ENABLE_IRQ;
    link->conf.IntType = INT_MEMORY_AND_IO;

    dev->netdev_ops = &axnet_netdev_ops;

    FUNC2(dev, &netdev_ethtool_ops);
    dev->watchdog_timeo = TX_TIMEOUT;

    return FUNC4(link);
}