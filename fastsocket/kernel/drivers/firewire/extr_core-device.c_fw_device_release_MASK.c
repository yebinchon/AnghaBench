#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fw_device {struct fw_device* config_rom; TYPE_1__* node; struct fw_card* card; } ;
struct fw_card {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fw_card*) ; 
 struct fw_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct fw_device *device = FUNC1(dev);
	struct fw_card *card = device->card;
	unsigned long flags;

	/*
	 * Take the card lock so we don't set this to NULL while a
	 * FW_NODE_UPDATED callback is being handled or while the
	 * bus manager work looks at this node.
	 */
	FUNC4(&card->lock, flags);
	device->node->data = NULL;
	FUNC5(&card->lock, flags);

	FUNC2(device->node);
	FUNC3(device->config_rom);
	FUNC3(device);
	FUNC0(card);
}