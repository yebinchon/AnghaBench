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
struct TYPE_4__ {int has_msi; } ;
struct adapter {int flags; int /*<<< orphan*/  sge; TYPE_2__* pdev; TYPE_1__ params; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int FULL_INIT_DONE ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  disable_msi ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adapter*) ; 
 int FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  t1_interrupt ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct adapter *adapter)
{
	int err = 0;

	if (!(adapter->flags & FULL_INIT_DONE)) {
		err = FUNC4(adapter);
		if (err)
			goto out_err;

		FUNC0(adapter);
		adapter->flags |= FULL_INIT_DONE;
	}

	FUNC5(adapter);

	adapter->params.has_msi = !disable_msi && !FUNC2(adapter->pdev);
	err = FUNC3(adapter->pdev->irq, t1_interrupt,
			  adapter->params.has_msi ? 0 : IRQF_SHARED,
			  adapter->name, adapter);
	if (err) {
		if (adapter->params.has_msi)
			FUNC1(adapter->pdev);

		goto out_err;
	}

	FUNC7(adapter->sge);
	FUNC6(adapter);
out_err:
	return err;
}