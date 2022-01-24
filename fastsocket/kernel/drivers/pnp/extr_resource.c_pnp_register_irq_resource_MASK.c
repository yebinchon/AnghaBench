#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bits; } ;
struct pnp_irq {unsigned char flags; TYPE_2__ map; } ;
struct TYPE_4__ {struct pnp_irq irq; } ;
struct pnp_option {TYPE_1__ u; } ;
struct pnp_dev {int dummy; } ;
typedef  TYPE_2__ pnp_irq_mask_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct pnp_dev*,struct pnp_option*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct pnp_option* FUNC2 (struct pnp_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 

int FUNC4(struct pnp_dev *dev, unsigned int option_flags,
			      pnp_irq_mask_t *map, unsigned char flags)
{
	struct pnp_option *option;
	struct pnp_irq *irq;

	option = FUNC2(dev, IORESOURCE_IRQ, option_flags);
	if (!option)
		return -ENOMEM;

	irq = &option->u.irq;
	irq->map = *map;
	irq->flags = flags;

#ifdef CONFIG_PCI
	{
		int i;

		for (i = 0; i < 16; i++)
			if (test_bit(i, irq->map.bits))
				pcibios_penalize_isa_irq(i, 0);
	}
#endif

	FUNC0(dev, option);
	return 0;
}