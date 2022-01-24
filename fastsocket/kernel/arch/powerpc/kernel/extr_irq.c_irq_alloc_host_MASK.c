#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct irq_host_ops {int /*<<< orphan*/  (* map ) (struct irq_host*,unsigned int,unsigned int) ;int /*<<< orphan*/ * match; } ;
struct TYPE_5__ {unsigned int size; unsigned int* revmap; } ;
struct TYPE_6__ {TYPE_1__ linear; } ;
struct irq_host {unsigned int revmap_type; TYPE_2__ revmap_data; int /*<<< orphan*/  inval_irq; int /*<<< orphan*/  link; struct irq_host_ops* ops; int /*<<< orphan*/  of_node; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
struct TYPE_8__ {int /*<<< orphan*/  status; } ;
struct TYPE_7__ {unsigned int hwirq; struct irq_host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  IRQ_HOST_MAP_LEGACY 129 
#define  IRQ_HOST_MAP_LINEAR 128 
 int /*<<< orphan*/  IRQ_NOREQUEST ; 
 unsigned int NO_IRQ ; 
 unsigned int NUM_ISA_INTERRUPTS ; 
 int /*<<< orphan*/ * default_irq_host_match ; 
 TYPE_4__* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  irq_big_lock ; 
 int /*<<< orphan*/  irq_hosts ; 
 TYPE_3__* irq_map ; 
 int /*<<< orphan*/  FUNC1 (struct irq_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ mem_init_done ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,struct irq_host*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_host*,unsigned int,unsigned int) ; 
 struct irq_host* FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 

struct irq_host *FUNC10(struct device_node *of_node,
				unsigned int revmap_type,
				unsigned int revmap_arg,
				struct irq_host_ops *ops,
				irq_hw_number_t inval_irq)
{
	struct irq_host *host;
	unsigned int size = sizeof(struct irq_host);
	unsigned int i;
	unsigned int *rmap;
	unsigned long flags;

	/* Allocate structure and revmap table if using linear mapping */
	if (revmap_type == IRQ_HOST_MAP_LINEAR)
		size += revmap_arg * sizeof(unsigned int);
	host = FUNC9(size, GFP_KERNEL);
	if (host == NULL)
		return NULL;

	/* Fill structure */
	host->revmap_type = revmap_type;
	host->inval_irq = inval_irq;
	host->ops = ops;
	host->of_node = FUNC3(of_node);

	if (host->ops->match == NULL)
		host->ops->match = default_irq_host_match;

	FUNC6(&irq_big_lock, flags);

	/* If it's a legacy controller, check for duplicates and
	 * mark it as allocated (we use irq 0 host pointer for that
	 */
	if (revmap_type == IRQ_HOST_MAP_LEGACY) {
		if (irq_map[0].host != NULL) {
			FUNC7(&irq_big_lock, flags);
			/* If we are early boot, we can't free the structure,
			 * too bad...
			 * this will be fixed once slab is made available early
			 * instead of the current cruft
			 */
			if (mem_init_done)
				FUNC1(host);
			return NULL;
		}
		irq_map[0].host = host;
	}

	FUNC2(&host->link, &irq_hosts);
	FUNC7(&irq_big_lock, flags);

	/* Additional setups per revmap type */
	switch(revmap_type) {
	case IRQ_HOST_MAP_LEGACY:
		/* 0 is always the invalid number for legacy */
		host->inval_irq = 0;
		/* setup us as the host for all legacy interrupts */
		for (i = 1; i < NUM_ISA_INTERRUPTS; i++) {
			irq_map[i].hwirq = i;
			FUNC5();
			irq_map[i].host = host;
			FUNC5();

			/* Clear norequest flags */
			FUNC0(i)->status &= ~IRQ_NOREQUEST;

			/* Legacy flags are left to default at this point,
			 * one can then use irq_create_mapping() to
			 * explicitly change them
			 */
			ops->map(host, i, i);
		}
		break;
	case IRQ_HOST_MAP_LINEAR:
		rmap = (unsigned int *)(host + 1);
		for (i = 0; i < revmap_arg; i++)
			rmap[i] = NO_IRQ;
		host->revmap_data.linear.size = revmap_arg;
		FUNC5();
		host->revmap_data.linear.revmap = rmap;
		break;
	default:
		break;
	}

	FUNC4("irq: Allocated host of type %d @0x%p\n", revmap_type, host);

	return host;
}