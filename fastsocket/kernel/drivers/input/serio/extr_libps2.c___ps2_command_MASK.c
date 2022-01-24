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
struct ps2dev {int flags; int cmdcnt; unsigned char* cmdbuf; int /*<<< orphan*/  serio; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int PS2_CMD_GETID ; 
 int PS2_CMD_RESET_BAT ; 
 int PS2_FLAG_CMD ; 
 int PS2_FLAG_CMD1 ; 
 int PS2_FLAG_WAITID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct ps2dev*,int,int) ; 
 scalar_t__ FUNC3 (struct ps2dev*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 

int FUNC7(struct ps2dev *ps2dev, unsigned char *param, int command)
{
	int timeout;
	int send = (command >> 12) & 0xf;
	int receive = (command >> 8) & 0xf;
	int rc = -1;
	int i;

	if (receive > sizeof(ps2dev->cmdbuf)) {
		FUNC0(1);
		return -1;
	}

	if (send && !param) {
		FUNC0(1);
		return -1;
	}

	FUNC5(ps2dev->serio);
	ps2dev->flags = command == PS2_CMD_GETID ? PS2_FLAG_WAITID : 0;
	ps2dev->cmdcnt = receive;
	if (receive && param)
		for (i = 0; i < receive; i++)
			ps2dev->cmdbuf[(receive - 1) - i] = param[i];
	FUNC4(ps2dev->serio);

	/*
	 * Some devices (Synaptics) peform the reset before
	 * ACKing the reset command, and so it can take a long
	 * time before the ACK arrrives.
	 */
	if (FUNC3(ps2dev, command & 0xff,
			 command == PS2_CMD_RESET_BAT ? 1000 : 200))
		goto out;

	for (i = 0; i < send; i++)
		if (FUNC3(ps2dev, param[i], 200))
			goto out;

	/*
	 * The reset command takes a long time to execute.
	 */
	timeout = FUNC1(command == PS2_CMD_RESET_BAT ? 4000 : 500);

	timeout = FUNC6(ps2dev->wait,
				     !(ps2dev->flags & PS2_FLAG_CMD1), timeout);

	if (ps2dev->cmdcnt && !(ps2dev->flags & PS2_FLAG_CMD1)) {

		timeout = FUNC2(ps2dev, command, timeout);
		FUNC6(ps2dev->wait,
				   !(ps2dev->flags & PS2_FLAG_CMD), timeout);
	}

	if (param)
		for (i = 0; i < receive; i++)
			param[i] = ps2dev->cmdbuf[(receive - 1) - i];

	if (ps2dev->cmdcnt && (command != PS2_CMD_RESET_BAT || ps2dev->cmdcnt != 1))
		goto out;

	rc = 0;

 out:
	FUNC5(ps2dev->serio);
	ps2dev->flags = 0;
	FUNC4(ps2dev->serio);

	return rc;
}