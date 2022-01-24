#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct brcms_pub {int /*<<< orphan*/  dbgfs_dir; TYPE_3__* wlc; } ;
struct TYPE_6__ {TYPE_2__* hw; } ;
struct TYPE_5__ {TYPE_1__* d11core; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  root_folder ; 

int FUNC3(struct brcms_pub *drvr)
{
	if (!root_folder)
		return -ENODEV;

	drvr->dbgfs_dir = FUNC1(
		 FUNC2(&drvr->wlc->hw->d11core->dev), root_folder);
	return FUNC0(drvr->dbgfs_dir);
}