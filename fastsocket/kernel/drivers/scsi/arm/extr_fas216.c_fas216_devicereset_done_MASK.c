#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int dummy; } ;
struct TYPE_4__ {int rst_dev_status; int /*<<< orphan*/  eh_wait; int /*<<< orphan*/ * rstSCpnt; } ;
typedef  TYPE_1__ FAS216_Info ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(FAS216_Info *info, struct scsi_cmnd *SCpnt,
				    unsigned int result)
{
	FUNC0(info, LOG_ERROR, "fas216 device reset complete");

	info->rstSCpnt = NULL;
	info->rst_dev_status = 1;
	FUNC1(&info->eh_wait);
}