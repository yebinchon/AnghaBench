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
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct omap2_onenand {int (* setup ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  freq; TYPE_1__ onenand; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct omap2_onenand* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data)
{
	int ret = 0;
	struct omap2_onenand *c;

	c = FUNC1(dev);

	FUNC0(c->setup == NULL);

	/* DMA is not in use so this is all that is needed */
	/* Revisit for OMAP3! */
	ret = c->setup(c->onenand.base, c->freq);

	return ret;
}