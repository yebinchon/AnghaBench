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
struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct qlogicfas408_priv {scalar_t__ qinitid; int /*<<< orphan*/ * qlcmd; } ;

/* Variables and functions */
 int DID_BAD_TARGET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct qlogicfas408_priv* FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC4 (struct scsi_cmnd*) ; 

int FUNC5(struct scsi_cmnd *cmd,
			      void (*done) (struct scsi_cmnd *))
{
	struct qlogicfas408_priv *priv = FUNC2(cmd);
	if (FUNC4(cmd) == priv->qinitid) {
		cmd->result = DID_BAD_TARGET << 16;
		done(cmd);
		return 0;
	}

	cmd->scsi_done = done;
	/* wait for the last command's interrupt to finish */
	while (priv->qlcmd != NULL) {
		FUNC0();
		FUNC1();
	}
	FUNC3(cmd);
	return 0;
}