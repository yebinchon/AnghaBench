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
struct driver_data {int /*<<< orphan*/  remove_list; int /*<<< orphan*/  dd_flag; int /*<<< orphan*/  online_list; } ;

/* Variables and functions */
 int MTIP_ABAR ; 
 int /*<<< orphan*/  MTIP_DDF_CLEANUP_BIT ; 
 int /*<<< orphan*/  MTIP_DDF_REMOVE_PENDING_BIT ; 
 int /*<<< orphan*/  dev_lock ; 
 int /*<<< orphan*/  FUNC0 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct driver_data*) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct driver_data* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  removing_list ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct pci_dev *pdev)
{
	struct driver_data *dd = FUNC8(pdev);
	int counter = 0;
	unsigned long flags;

	FUNC10(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag);

	FUNC11(&dev_lock, flags);
	FUNC2(&dd->online_list);
	FUNC1(&dd->remove_list, &removing_list);
	FUNC12(&dev_lock, flags);

	if (FUNC5(pdev)) {
		while (!FUNC13(MTIP_DDF_CLEANUP_BIT, &dd->dd_flag)) {
			counter++;
			FUNC3(20);
			if (counter == 10) {
				/* Cleanup the outstanding commands */
				FUNC6(dd);
				break;
			}
		}
	}

	/* Clean up the block layer. */
	FUNC4(dd);

	FUNC7(pdev);

	FUNC11(&dev_lock, flags);
	FUNC2(&dd->remove_list);
	FUNC12(&dev_lock, flags);

	FUNC0(dd);
	FUNC9(pdev, 1 << MTIP_ABAR);
}