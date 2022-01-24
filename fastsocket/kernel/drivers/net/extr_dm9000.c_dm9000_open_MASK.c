#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct TYPE_9__ {int /*<<< orphan*/  mii; scalar_t__ dbug_cnt; int /*<<< orphan*/  dev; TYPE_1__* irq_res; } ;
typedef  TYPE_2__ board_info_t ;
struct TYPE_8__ {unsigned long flags; } ;

/* Variables and functions */
 int EAGAIN ; 
 unsigned long IRQF_SHARED ; 
 unsigned long IRQF_TRIGGER_MASK ; 
 unsigned long IRQF_TRIGGER_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  dm9000_interrupt ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int
FUNC11(struct net_device *dev)
{
	board_info_t *db = FUNC6(dev);
	unsigned long irqflags = db->irq_res->flags & IRQF_TRIGGER_MASK;

	if (FUNC7(db))
		FUNC0(db->dev, "enabling %s\n", dev->name);

	/* If there is no IRQ type specified, default to something that
	 * may work, and tell the user that this is a problem */

	if (irqflags == IRQF_TRIGGER_NONE)
		FUNC1(db->dev, "WARNING: no IRQ resource flags set.\n");

	irqflags |= IRQF_SHARED;

	if (FUNC10(dev->irq, &dm9000_interrupt, irqflags, dev->name, dev))
		return -EAGAIN;

	/* Initialize DM9000 board */
	FUNC3(db);
	FUNC2(dev);

	/* Init driver variable */
	db->dbug_cnt = 0;

	FUNC5(&db->mii, FUNC8(db), 1);
	FUNC9(dev);
	
	FUNC4(db);

	return 0;
}