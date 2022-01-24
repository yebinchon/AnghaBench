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
struct ps2dev {int nak; int flags; int /*<<< orphan*/  serio; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int PS2_FLAG_ACK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct ps2dev *ps2dev, unsigned char byte, int timeout)
{
	FUNC2(ps2dev->serio);
	ps2dev->nak = 1;
	ps2dev->flags |= PS2_FLAG_ACK;
	FUNC1(ps2dev->serio);

	if (FUNC3(ps2dev->serio, byte) == 0)
		FUNC4(ps2dev->wait,
				   !(ps2dev->flags & PS2_FLAG_ACK),
				   FUNC0(timeout));

	FUNC2(ps2dev->serio);
	ps2dev->flags &= ~PS2_FLAG_ACK;
	FUNC1(ps2dev->serio);

	return -ps2dev->nak;
}