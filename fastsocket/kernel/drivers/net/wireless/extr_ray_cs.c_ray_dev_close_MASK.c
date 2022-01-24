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
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct pcmcia_device* finder; } ;
typedef  TYPE_1__ ray_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	ray_dev_t *local = FUNC1(dev);
	struct pcmcia_device *link;
	link = local->finder;

	FUNC0(1, "ray_dev_close('%s')\n", dev->name);

	link->open--;
	FUNC2(dev);

	/* In here, we should stop the hardware (stop card from beeing active)
	 * and set local->card_status to CARD_AWAITING_PARAM, so that while the
	 * card is closed we can chage its configuration.
	 * Probably also need a COR reset to get sane state - Jean II */

	return 0;
}