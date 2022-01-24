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
struct sih_agent {unsigned int irq_base; int /*<<< orphan*/  edge_work; int /*<<< orphan*/  mask_work; int /*<<< orphan*/  imr; struct sih const* sih; } ;
struct sih {int module; unsigned int bits; int /*<<< orphan*/  name; scalar_t__ set_cor; } ;

/* Variables and functions */
 int FUNC0 (struct sih*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int NR_IRQS ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_twl4030_sih ; 
 struct sih_agent* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct sih_agent*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct sih_agent*) ; 
 struct sih* sih_modules ; 
 int twl4030_irq_base ; 
 int twl4030_irq_next ; 
 int /*<<< orphan*/  twl4030_sih_do_edge ; 
 int /*<<< orphan*/  twl4030_sih_do_mask ; 
 int /*<<< orphan*/  twl4030_sih_irq_chip ; 

int FUNC10(int module)
{
	int			sih_mod;
	const struct sih	*sih = NULL;
	struct sih_agent	*agent;
	int			i, irq;
	int			status = -EINVAL;
	unsigned		irq_base = twl4030_irq_next;

	/* only support modules with standard clear-on-read for now */
	for (sih_mod = 0, sih = sih_modules;
			sih_mod < FUNC0(sih_modules);
			sih_mod++, sih++) {
		if (sih->module == module && sih->set_cor) {
			if (!FUNC2((irq_base + sih->bits) > NR_IRQS,
					"irq %d for %s too big\n",
					irq_base + sih->bits,
					sih->name))
				status = 0;
			break;
		}
	}
	if (status < 0)
		return status;

	agent = FUNC4(sizeof *agent, GFP_KERNEL);
	if (!agent)
		return -ENOMEM;

	status = 0;

	agent->irq_base = irq_base;
	agent->sih = sih;
	agent->imr = ~0;
	FUNC1(&agent->mask_work, twl4030_sih_do_mask);
	FUNC1(&agent->edge_work, twl4030_sih_do_edge);

	for (i = 0; i < sih->bits; i++) {
		irq = irq_base + i;

		FUNC7(irq, &twl4030_sih_irq_chip,
				handle_edge_irq);
		FUNC8(irq, agent);
		FUNC3(irq);
	}

	status = irq_base;
	twl4030_irq_next += i;

	/* replace generic PIH handler (handle_simple_irq) */
	irq = sih_mod + twl4030_irq_base;
	FUNC9(irq, agent);
	FUNC6(irq, handle_twl4030_sih);

	FUNC5("twl4030: %s (irq %d) chaining IRQs %d..%d\n", sih->name,
			irq, irq_base, twl4030_irq_next - 1);

	return status;
}