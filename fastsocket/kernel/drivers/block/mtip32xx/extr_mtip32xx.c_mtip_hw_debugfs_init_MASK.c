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
struct driver_data {int /*<<< orphan*/ * dfs_node; TYPE_1__* disk; TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct driver_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dfs_parent ; 
 int /*<<< orphan*/  mtip_flags_fops ; 
 int /*<<< orphan*/  mtip_regs_fops ; 

__attribute__((used)) static int FUNC4(struct driver_data *dd)
{
	if (!dfs_parent)
		return -1;

	dd->dfs_node = FUNC1(dd->disk->disk_name, dfs_parent);
	if (FUNC0(dd->dfs_node)) {
		FUNC3(&dd->pdev->dev,
			"Error creating node %s under debugfs\n",
						dd->disk->disk_name);
		dd->dfs_node = NULL;
		return -1;
	}

	FUNC2("flags", S_IRUGO, dd->dfs_node, dd,
							&mtip_flags_fops);
	FUNC2("registers", S_IRUGO, dd->dfs_node, dd,
							&mtip_regs_fops);

	return 0;
}