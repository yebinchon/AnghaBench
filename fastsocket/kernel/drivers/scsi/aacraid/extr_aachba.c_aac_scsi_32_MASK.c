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
typedef  int u16 ;
struct sgmap {int dummy; } ;
struct sgentry {int dummy; } ;
struct scsi_cmnd {int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmnd; } ;
struct fib {TYPE_2__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  count; } ;
struct aac_srb {TYPE_1__ sg; int /*<<< orphan*/  cdb; int /*<<< orphan*/  count; } ;
struct aac_fibhdr {int dummy; } ;
typedef  int /*<<< orphan*/  fib_callback ;
struct TYPE_4__ {int max_fib_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FsaNormal ; 
 int /*<<< orphan*/  ScsiPortCommand ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,struct sgmap*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct fib*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 struct aac_srb* FUNC3 (struct fib*,struct scsi_cmnd*) ; 
 scalar_t__ aac_srb_callback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC9(struct fib * fib, struct scsi_cmnd * cmd)
{
	u16 fibsize;
	struct aac_srb * srbcmd = FUNC3(fib, cmd);

	FUNC1(cmd, (struct sgmap*)&srbcmd->sg);
	srbcmd->count = FUNC4(FUNC8(cmd));

	FUNC7(srbcmd->cdb, 0, sizeof(srbcmd->cdb));
	FUNC6(srbcmd->cdb, cmd->cmnd, cmd->cmd_len);
	/*
	 *	Build Scatter/Gather list
	 */
	fibsize = sizeof (struct aac_srb) +
		(((FUNC5(srbcmd->sg.count) & 0xff) - 1) *
		 sizeof (struct sgentry));
	FUNC0 (fibsize > (fib->dev->max_fib_size -
				sizeof(struct aac_fibhdr)));

	/*
	 *	Now send the Fib to the adapter
	 */
	return FUNC2(ScsiPortCommand, fib, fibsize, FsaNormal, 0, 1,
				  (fib_callback) aac_srb_callback, (void *) cmd);
}