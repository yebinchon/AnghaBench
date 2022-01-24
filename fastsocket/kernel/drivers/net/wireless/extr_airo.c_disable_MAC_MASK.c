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
struct airo_info {int /*<<< orphan*/  sem; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  Resp ;
typedef  TYPE_1__ Cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_ENABLED ; 
 int /*<<< orphan*/  MAC_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct airo_info*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( struct airo_info *ai, int lock ) {
        Cmd cmd;
	Resp rsp;

	if (lock && FUNC1(&ai->sem))
		return;

	if (FUNC4(FLAG_ENABLED, &ai->flags)) {
		FUNC3(&cmd, 0, sizeof(cmd));
		cmd.cmd = MAC_DISABLE; // disable in case already enabled
		FUNC2(ai, &cmd, &rsp);
		FUNC0(FLAG_ENABLED, &ai->flags);
	}
	if (lock)
		FUNC5(&ai->sem);
}