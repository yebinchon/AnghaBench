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
struct resource {int dummy; } ;
struct mfd_cell {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,int,struct mfd_cell const*,struct resource*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 

int FUNC2(struct device *parent, int id,
		    const struct mfd_cell *cells, int n_devs,
		    struct resource *mem_base,
		    int irq_base)
{
	int i;
	int ret = 0;

	for (i = 0; i < n_devs; i++) {
		ret = FUNC0(parent, id, cells + i, mem_base, irq_base);
		if (ret)
			break;
	}

	if (ret)
		FUNC1(parent);

	return ret;
}