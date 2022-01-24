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
struct scsi_device {int /*<<< orphan*/  host; } ;
struct TYPE_2__ {int /*<<< orphan*/  adv_dvc_var; int /*<<< orphan*/  asc_dvc_var; } ;
struct asc_board {TYPE_1__ dvc_var; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct asc_board*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int /*<<< orphan*/ *) ; 
 struct asc_board* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct scsi_device *sdev)
{
	struct asc_board *boardp = FUNC3(sdev->host);

	if (FUNC0(boardp))
		FUNC1(sdev,
						&boardp->dvc_var.asc_dvc_var);
	else
		FUNC2(sdev,
						&boardp->dvc_var.adv_dvc_var);

	return 0;
}