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
struct resource {int /*<<< orphan*/  start; } ;
struct pmc_type {int /*<<< orphan*/  has_deep_sleep; } ;
struct of_device_id {struct pmc_type* data; } ;
struct of_device {struct device_node* node; } ;
struct mpc83xx_pmc {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ NO_IRQ ; 
 void* clock_regs ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct of_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  has_deep_sleep ; 
 int /*<<< orphan*/  immrbase ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ is_pci_agent ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  mpc83xx_suspend_ops ; 
 int FUNC7 (struct device_node*,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 struct of_device* pmc_dev ; 
 scalar_t__ pmc_irq ; 
 int /*<<< orphan*/  pmc_irq_handler ; 
 void* pmc_regs ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct of_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct of_device *ofdev,
                     const struct of_device_id *match)
{
	struct device_node *np = ofdev->node;
	struct resource res;
	struct pmc_type *type = match->data;
	int ret = 0;

	if (!FUNC8(np))
		return -ENODEV;

	has_deep_sleep = type->has_deep_sleep;
	immrbase = FUNC1();
	pmc_dev = ofdev;

	is_pci_agent = FUNC5();
	if (is_pci_agent < 0)
		return is_pci_agent;

	ret = FUNC7(np, 0, &res);
	if (ret)
		return -ENODEV;

	pmc_irq = FUNC4(np, 0);
	if (pmc_irq != NO_IRQ) {
		ret = FUNC9(pmc_irq, pmc_irq_handler, IRQF_SHARED,
		                  "pmc", ofdev);

		if (ret)
			return -EBUSY;
	}

	pmc_regs = FUNC2(res.start, sizeof(struct mpc83xx_pmc));

	if (!pmc_regs) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC7(np, 1, &res);
	if (ret) {
		ret = -ENODEV;
		goto out_pmc;
	}

	clock_regs = FUNC2(res.start, sizeof(struct mpc83xx_pmc));

	if (!clock_regs) {
		ret = -ENOMEM;
		goto out_pmc;
	}

	if (is_pci_agent)
		FUNC6();

	FUNC10(&mpc83xx_suspend_ops);
	return 0;

out_pmc:
	FUNC3(pmc_regs);
out:
	if (pmc_irq != NO_IRQ)
		FUNC0(pmc_irq, ofdev);

	return ret;
}