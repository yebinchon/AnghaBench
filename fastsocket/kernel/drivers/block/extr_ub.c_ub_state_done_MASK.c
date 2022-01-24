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
struct ub_scsi_cmd {int error; int /*<<< orphan*/  (* done ) (struct ub_dev*,struct ub_scsi_cmd*) ;int /*<<< orphan*/  state; } ;
struct ub_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UB_CMDST_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct ub_dev*,struct ub_scsi_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_dev*) ; 

__attribute__((used)) static void FUNC2(struct ub_dev *sc, struct ub_scsi_cmd *cmd, int rc)
{

	cmd->error = rc;
	cmd->state = UB_CMDST_DONE;
	FUNC1(sc);
	(*cmd->done)(sc, cmd);
}