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
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  result; } ;
struct qlogicfas408_priv {int qbase; struct scsi_cmnd* qlcmd; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG0 ; 
 struct qlogicfas408_priv* FUNC0 (struct Scsi_Host*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC4(void *dev_id)
{
	struct scsi_cmnd *icmd;
	struct Scsi_Host *host = dev_id;
	struct qlogicfas408_priv *priv = FUNC0(host);
	int qbase = priv->qbase;
	REG0;

	if (!(FUNC1(qbase + 4) & 0x80))	/* false alarm? */
		return;

	if (priv->qlcmd == NULL) {	/* no command to process? */
		int i;
		i = 16;
		while (i-- && FUNC1(qbase + 5));	/* maybe also ql_zap() */
		return;
	}
	icmd = priv->qlcmd;
	icmd->result = FUNC2(icmd);
	priv->qlcmd = NULL;
	/*
	 *	If result is CHECK CONDITION done calls qcommand to request 
	 *	sense 
	 */
	(icmd->scsi_done) (icmd);
}