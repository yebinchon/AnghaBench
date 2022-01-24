#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct saa7146_pci_extension_data {int dummy; } ;
struct saa7146_dev {struct budget_ci* ext_priv; } ;
struct TYPE_5__ {struct budget_ci* priv; } ;
struct TYPE_6__ {TYPE_1__ dvb_adapter; } ;
struct budget_ci {TYPE_2__ budget; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adapter_nr ; 
 int /*<<< orphan*/  FUNC0 (struct budget_ci*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct budget_ci*) ; 
 int /*<<< orphan*/  FUNC2 (struct budget_ci*) ; 
 int /*<<< orphan*/  FUNC3 (struct budget_ci*) ; 
 struct budget_ci* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct budget_ci*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,struct saa7146_dev*,struct saa7146_pci_extension_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(struct saa7146_dev *dev, struct saa7146_pci_extension_data *info)
{
	struct budget_ci *budget_ci;
	int err;

	budget_ci = FUNC4(sizeof(struct budget_ci), GFP_KERNEL);
	if (!budget_ci) {
		err = -ENOMEM;
		goto out1;
	}

	FUNC1(2, "budget_ci: %p\n", budget_ci);

	dev->ext_priv = budget_ci;

	err = FUNC7(&budget_ci->budget, dev, info, THIS_MODULE,
				adapter_nr);
	if (err)
		goto out2;

	err = FUNC5(budget_ci);
	if (err)
		goto out3;

	FUNC0(budget_ci);

	budget_ci->budget.dvb_adapter.priv = budget_ci;
	FUNC2(budget_ci);

	FUNC8(&budget_ci->budget);

	return 0;

out3:
	FUNC6(&budget_ci->budget);
out2:
	FUNC3(budget_ci);
out1:
	return err;
}