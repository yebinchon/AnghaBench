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
struct airo_info {int flags; int /*<<< orphan*/  sem; int /*<<< orphan*/  jobs; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {int /*<<< orphan*/  parm0; int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  Resp ;
typedef  TYPE_1__ Cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SETMODE ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  JOB_PROMISC ; 
 int /*<<< orphan*/  NOPROMISC ; 
 int /*<<< orphan*/  PROMISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct airo_info*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct airo_info *ai) {
	Cmd cmd;
	Resp rsp;

	FUNC2(&cmd, 0, sizeof(cmd));
	cmd.cmd=CMD_SETMODE;
	FUNC0(JOB_PROMISC, &ai->jobs);
	cmd.parm0=(ai->flags&IFF_PROMISC) ? PROMISC : NOPROMISC;
	FUNC1(ai, &cmd, &rsp);
	FUNC3(&ai->sem);
}