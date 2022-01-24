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
struct ql_adapter {int /*<<< orphan*/  mpi_coredump; scalar_t__ doorbell_area; scalar_t__ reg_base; int /*<<< orphan*/ * workqueue; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct ql_adapter* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct net_device *ndev = FUNC3(pdev);
	struct ql_adapter *qdev = FUNC2(ndev);

	if (qdev->workqueue) {
		FUNC0(qdev->workqueue);
		qdev->workqueue = NULL;
	}

	if (qdev->reg_base)
		FUNC1(qdev->reg_base);
	if (qdev->doorbell_area)
		FUNC1(qdev->doorbell_area);
	FUNC6(qdev->mpi_coredump);
	FUNC4(pdev);
	FUNC5(pdev, NULL);
}