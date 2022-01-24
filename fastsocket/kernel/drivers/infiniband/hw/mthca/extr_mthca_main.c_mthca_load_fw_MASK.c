#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fw_icm; int /*<<< orphan*/  fw_pages; } ;
struct TYPE_3__ {TYPE_2__ arbel; } ;
struct mthca_dev {TYPE_1__ fw; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_HIGHUSER ; 
 int __GFP_NOWARN ; 
 int FUNC0 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mthca_dev *mdev)
{
	int err;

	/* FIXME: use HCA-attached memory for FW if present */

	mdev->fw.arbel.fw_icm =
		FUNC3(mdev, mdev->fw.arbel.fw_pages,
				GFP_HIGHUSER | __GFP_NOWARN, 0);
	if (!mdev->fw.arbel.fw_icm) {
		FUNC4(mdev, "Couldn't allocate FW area, aborting.\n");
		return -ENOMEM;
	}

	err = FUNC0(mdev, mdev->fw.arbel.fw_icm);
	if (err) {
		FUNC4(mdev, "MAP_FA command returned %d, aborting.\n", err);
		goto err_free;
	}
	err = FUNC1(mdev);
	if (err) {
		FUNC4(mdev, "RUN_FW command returned %d, aborting.\n", err);
		goto err_unmap_fa;
	}

	return 0;

err_unmap_fa:
	FUNC2(mdev);

err_free:
	FUNC5(mdev, mdev->fw.arbel.fw_icm, 0);
	return err;
}