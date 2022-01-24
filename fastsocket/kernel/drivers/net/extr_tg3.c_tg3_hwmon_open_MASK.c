#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tg3_ocir {scalar_t__ src_data_length; scalar_t__ src_hdr_length; } ;
struct tg3 {int /*<<< orphan*/ * hwmon_dev; struct pci_dev* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int TG3_SD_NUM_RECS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tg3_group ; 
 int /*<<< orphan*/  FUNC5 (struct tg3*,struct tg3_ocir*) ; 

__attribute__((used)) static void FUNC6(struct tg3 *tp)
{
	int i, err;
	u32 size = 0;
	struct pci_dev *pdev = tp->pdev;
	struct tg3_ocir ocirs[TG3_SD_NUM_RECS];

	FUNC5(tp, ocirs);

	for (i = 0; i < TG3_SD_NUM_RECS; i++) {
		if (!ocirs[i].src_data_length)
			continue;

		size += ocirs[i].src_hdr_length;
		size += ocirs[i].src_data_length;
	}

	if (!size)
		return;

	/* Register hwmon sysfs hooks */
	err = FUNC3(&pdev->dev.kobj, &tg3_group);
	if (err) {
		FUNC1(&pdev->dev, "Cannot create sysfs group, aborting\n");
		return;
	}

	tp->hwmon_dev = FUNC2(&pdev->dev);
	if (FUNC0(tp->hwmon_dev)) {
		tp->hwmon_dev = NULL;
		FUNC1(&pdev->dev, "Cannot register hwmon device, aborting\n");
		FUNC4(&pdev->dev.kobj, &tg3_group);
	}
}