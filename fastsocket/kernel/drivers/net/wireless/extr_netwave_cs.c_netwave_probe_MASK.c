#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int Attributes; struct net_device* Instance; int /*<<< orphan*/ * Handler; int /*<<< orphan*/  IRQInfo1; } ;
struct TYPE_7__ {int ConfigIndex; int /*<<< orphan*/  IntType; int /*<<< orphan*/  Attributes; } ;
struct TYPE_6__ {int NumPorts1; int IOAddrLines; int /*<<< orphan*/  Attributes1; } ;
struct pcmcia_device {TYPE_3__ irq; TYPE_2__ conf; TYPE_1__ io; struct net_device* priv; } ;
struct net_device {int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * wireless_handlers; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_9__ {int /*<<< orphan*/  spinlock; struct pcmcia_device* p_dev; } ;
typedef  TYPE_4__ netwave_private ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_ENABLE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INT_MEMORY_AND_IO ; 
 int /*<<< orphan*/  IO_DATA_PATH_WIDTH_16 ; 
 int IRQ_HANDLE_PRESENT ; 
 int /*<<< orphan*/  IRQ_LEVEL_ID ; 
 int IRQ_TYPE_DYNAMIC_SHARING ; 
 int /*<<< orphan*/  TX_TIMEOUT ; 
 struct net_device* FUNC1 (int) ; 
 TYPE_4__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  netwave_handler_def ; 
 int /*<<< orphan*/  netwave_interrupt ; 
 int /*<<< orphan*/  netwave_netdev_ops ; 
 int FUNC3 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct pcmcia_device *link)
{
    struct net_device *dev;
    netwave_private *priv;

    FUNC0(0, "netwave_attach()\n");

    /* Initialize the struct pcmcia_device structure */
    dev = FUNC1(sizeof(netwave_private));
    if (!dev)
	return -ENOMEM;
    priv = FUNC2(dev);
    priv->p_dev = link;
    link->priv = dev;

    /* The io structure describes IO port mapping */
    link->io.NumPorts1 = 16;
    link->io.Attributes1 = IO_DATA_PATH_WIDTH_16;
    /* link->io.NumPorts2 = 16; 
       link->io.Attributes2 = IO_DATA_PATH_WIDTH_16; */
    link->io.IOAddrLines = 5;
    
    /* Interrupt setup */
    link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING | IRQ_HANDLE_PRESENT;
    link->irq.IRQInfo1 = IRQ_LEVEL_ID;
    link->irq.Handler = &netwave_interrupt;
    
    /* General socket configuration */
    link->conf.Attributes = CONF_ENABLE_IRQ;
    link->conf.IntType = INT_MEMORY_AND_IO;
    link->conf.ConfigIndex = 1;

    /* Netwave private struct init. link/dev/node already taken care of,
     * other stuff zero'd - Jean II */
    FUNC4(&priv->spinlock);

    /* Netwave specific entries in the device structure */
    dev->netdev_ops = &netwave_netdev_ops;
    /* wireless extensions */
    dev->wireless_handlers = &netwave_handler_def;

    dev->watchdog_timeo = TX_TIMEOUT;

    link->irq.Instance = dev;

    return FUNC3( link);
}