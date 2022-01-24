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
struct pcmcia_device {scalar_t__ dev_node; struct local_info_t* priv; } ;
struct local_info_t {int stop; size_t table_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/ ** dev_table ; 
 int /*<<< orphan*/  FUNC2 (struct local_info_t*) ; 

__attribute__((used)) static void FUNC3(struct pcmcia_device *link)
{
	struct local_info_t *dev = link->priv;

	FUNC0(0, "daqp_cs_detach(0x%p)\n", link);

	if (link->dev_node) {
		dev->stop = 1;
		FUNC1(link);
	}

	/* Unlink device structure, and free it */
	dev_table[dev->table_index] = NULL;
	if (dev)
		FUNC2(dev);

}