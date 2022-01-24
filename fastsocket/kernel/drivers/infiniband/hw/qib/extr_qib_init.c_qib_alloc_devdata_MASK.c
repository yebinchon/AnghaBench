#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ibdev; } ;
struct qib_devdata {TYPE_1__ verbs_dev; int /*<<< orphan*/  list; int /*<<< orphan*/  unit; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int ENOMEM ; 
 struct qib_devdata* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct qib_devdata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ qib_cpulist ; 
 scalar_t__ qib_cpulist_count ; 
 int /*<<< orphan*/  qib_dev_list ; 
 int /*<<< orphan*/  qib_devs_lock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  qib_unit_table ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

struct qib_devdata *FUNC12(struct pci_dev *pdev, size_t extra)
{
	unsigned long flags;
	struct qib_devdata *dd;
	int ret;

	if (!FUNC5(&qib_unit_table, GFP_KERNEL)) {
		dd = FUNC1(-ENOMEM);
		goto bail;
	}

	dd = (struct qib_devdata *) FUNC2(sizeof(*dd) + extra);
	if (!dd) {
		dd = FUNC1(-ENOMEM);
		goto bail;
	}

	FUNC10(&qib_devs_lock, flags);
	ret = FUNC4(&qib_unit_table, dd, &dd->unit);
	if (ret >= 0)
		FUNC7(&dd->list, &qib_dev_list);
	FUNC11(&qib_devs_lock, flags);

	if (ret < 0) {
		FUNC9(&pdev->dev,
			      "Could not allocate unit ID: error %d\n", -ret);
		FUNC3(&dd->verbs_dev.ibdev);
		dd = FUNC1(ret);
		goto bail;
	}

	if (!qib_cpulist_count) {
		u32 count = FUNC8();
		qib_cpulist = FUNC6(FUNC0(count) *
				      sizeof(long), GFP_KERNEL);
		if (qib_cpulist)
			qib_cpulist_count = count;
		else
			FUNC9(&pdev->dev,
				"Could not alloc cpulist info, cpu affinity might be wrong\n");
	}

bail:
	return dd;
}