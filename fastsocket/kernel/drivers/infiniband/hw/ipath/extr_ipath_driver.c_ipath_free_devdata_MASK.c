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
struct pci_dev {int dummy; } ;
struct ipath_devdata {int ipath_unit; int /*<<< orphan*/  ipath_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ipath_devs_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  unit_table ; 
 int /*<<< orphan*/  FUNC5 (struct ipath_devdata*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev,
			       struct ipath_devdata *dd)
{
	unsigned long flags;

	FUNC2(pdev, NULL);

	if (dd->ipath_unit != -1) {
		FUNC3(&ipath_devs_lock, flags);
		FUNC0(&unit_table, dd->ipath_unit);
		FUNC1(&dd->ipath_list);
		FUNC4(&ipath_devs_lock, flags);
	}
	FUNC5(dd);
}