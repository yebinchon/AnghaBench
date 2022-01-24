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
struct ub_scsi_cmd {int /*<<< orphan*/  state; scalar_t__ stat_count; } ;
struct ub_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UB_CMDST_STAT ; 
 scalar_t__ FUNC0 (struct ub_dev*,struct ub_scsi_cmd*) ; 

__attribute__((used)) static void FUNC1(struct ub_dev *sc, struct ub_scsi_cmd *cmd)
{

	if (FUNC0(sc, cmd) != 0)
		return;

	cmd->stat_count = 0;
	cmd->state = UB_CMDST_STAT;
}