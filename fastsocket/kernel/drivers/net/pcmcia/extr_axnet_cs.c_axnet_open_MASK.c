#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct pcmcia_device {int /*<<< orphan*/  open; } ;
struct net_device {unsigned int base_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {scalar_t__ expires; scalar_t__ data; int /*<<< orphan*/ * function; } ;
struct TYPE_5__ {int link_status; TYPE_2__ watchdog; struct pcmcia_device* p_dev; } ;
typedef  TYPE_1__ axnet_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ EN0_ISR ; 
 int ENODEV ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  ei_irq_wrapper ; 
 int /*<<< orphan*/  ei_watchdog ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
    int ret;
    axnet_dev_t *info = FUNC1(dev);
    struct pcmcia_device *link = info->p_dev;
    unsigned int nic_base = dev->base_addr;
    
    FUNC0(2, "axnet_open('%s')\n", dev->name);

    if (!FUNC6(link))
	return -ENODEV;

    FUNC5(0xFF, nic_base + EN0_ISR); /* Clear bogus intr. */
    ret = FUNC7(dev->irq, ei_irq_wrapper, IRQF_SHARED, "axnet_cs", dev);
    if (ret)
	    return ret;

    link->open++;

    info->link_status = 0x00;
    FUNC4(&info->watchdog);
    info->watchdog.function = &ei_watchdog;
    info->watchdog.data = (u_long)dev;
    info->watchdog.expires = jiffies + HZ;
    FUNC2(&info->watchdog);

    return FUNC3(dev);
}