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
struct serial_info {int ndev; int /*<<< orphan*/  slave; TYPE_1__* p_dev; int /*<<< orphan*/ * line; } ;
struct pcmcia_device {struct serial_info* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dev_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pcmcia_device *link)
{
	struct serial_info *info = link->priv;
	int i;

	FUNC0(0, "serial_release(0x%p)\n", link);

	/*
	 * Recheck to see if the device is still configured.
	 */
	for (i = 0; i < info->ndev; i++)
		FUNC2(info->line[i]);

	info->p_dev->dev_node = NULL;

	if (!info->slave)
		FUNC1(link);
}