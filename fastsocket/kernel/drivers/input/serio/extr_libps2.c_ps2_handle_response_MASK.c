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
struct ps2dev {int cmdcnt; unsigned char* cmdbuf; int flags; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int PS2_FLAG_CMD ; 
 int PS2_FLAG_CMD1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

int FUNC1(struct ps2dev *ps2dev, unsigned char data)
{
	if (ps2dev->cmdcnt)
		ps2dev->cmdbuf[--ps2dev->cmdcnt] = data;

	if (ps2dev->flags & PS2_FLAG_CMD1) {
		ps2dev->flags &= ~PS2_FLAG_CMD1;
		if (ps2dev->cmdcnt)
			FUNC0(&ps2dev->wait);
	}

	if (!ps2dev->cmdcnt) {
		ps2dev->flags &= ~PS2_FLAG_CMD;
		FUNC0(&ps2dev->wait);
	}

	return 1;
}