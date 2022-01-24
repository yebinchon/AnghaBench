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
typedef  int /*<<< orphan*/  u32 ;
struct pmcraid_ioasc_error {scalar_t__ log_level; int /*<<< orphan*/  error_string; } ;
struct pmcraid_cmd {TYPE_2__* ioa_cb; TYPE_1__* drv_inst; } ;
struct TYPE_6__ {int /*<<< orphan*/  resource_handle; int /*<<< orphan*/ * cdb; } ;
struct TYPE_5__ {TYPE_3__ ioarcb; } ;
struct TYPE_4__ {scalar_t__ current_log_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pmcraid_ioasc_error* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(u32 ioasc, struct pmcraid_cmd *cmd)
{
	struct pmcraid_ioasc_error *error_info = FUNC2(ioasc);

	if (error_info == NULL ||
		cmd->drv_inst->current_log_level < error_info->log_level)
		return;

	/* log the error string */
	FUNC1("cmd [%x] for resource %x failed with %x(%s)\n",
		cmd->ioa_cb->ioarcb.cdb[0],
		cmd->ioa_cb->ioarcb.resource_handle,
		FUNC0(ioasc), error_info->error_string);
}