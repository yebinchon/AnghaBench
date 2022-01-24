#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct adapter {TYPE_1__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 scalar_t__ FUNC6 (struct adapter*) ; 

__attribute__((used)) static int FUNC7(struct adapter *adapter)
{
	if (FUNC1(adapter->pdev)) {
		FUNC0(&adapter->pdev->dev,
			"Cannot re-enable PCI device after reset.\n");
		goto err;
	}
	FUNC4(adapter->pdev);
	FUNC2(adapter->pdev);
	FUNC3(adapter->pdev);

	/* Free sge resources */
	FUNC5(adapter);

	if (FUNC6(adapter))
		goto err;

	return 0;
err:
	return -1;
}