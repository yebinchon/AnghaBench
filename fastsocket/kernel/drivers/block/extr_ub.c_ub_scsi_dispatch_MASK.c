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
struct ub_scsi_cmd {scalar_t__ state; int error; int /*<<< orphan*/  (* done ) (struct ub_dev*,struct ub_scsi_cmd*) ;} ;
struct ub_dev {int /*<<< orphan*/  work_timer; int /*<<< orphan*/  work_done; int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 scalar_t__ UB_CMDST_DONE ; 
 scalar_t__ UB_CMDST_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_dev*,struct ub_scsi_cmd*) ; 
 struct ub_scsi_cmd* FUNC2 (struct ub_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ub_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ub_dev*,struct ub_scsi_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct ub_dev*,struct ub_scsi_cmd*) ; 

__attribute__((used)) static void FUNC7(struct ub_dev *sc)
{
	struct ub_scsi_cmd *cmd;
	int rc;

	while (!sc->reset && (cmd = FUNC2(sc)) != NULL) {
		if (cmd->state == UB_CMDST_DONE) {
			FUNC3(sc);
			(*cmd->done)(sc, cmd);
		} else if (cmd->state == UB_CMDST_INIT) {
			if ((rc = FUNC5(sc, cmd)) == 0)
				break;
			cmd->error = rc;
			cmd->state = UB_CMDST_DONE;
		} else {
			if (!FUNC4(&sc->work_done))
				break;
			FUNC0(&sc->work_timer);
			FUNC6(sc, cmd);
		}
	}
}