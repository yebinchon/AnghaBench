#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t head; size_t tail; unsigned char* buf; } ;
struct iforce {int /*<<< orphan*/  xmit_lock; int /*<<< orphan*/  xmit_flags; int /*<<< orphan*/  serio; TYPE_1__ xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFORCE_XMIT_AGAIN ; 
 int /*<<< orphan*/  IFORCE_XMIT_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct iforce *iforce)
{
	unsigned char cs;
	int i;
	unsigned long flags;

	if (FUNC7(IFORCE_XMIT_RUNNING, iforce->xmit_flags)) {
		FUNC3(IFORCE_XMIT_AGAIN, iforce->xmit_flags);
		return;
	}

	FUNC4(&iforce->xmit_lock, flags);

again:
	if (iforce->xmit.head == iforce->xmit.tail) {
		FUNC1(IFORCE_XMIT_RUNNING, iforce->xmit_flags);
		FUNC5(&iforce->xmit_lock, flags);
		return;
	}

	cs = 0x2b;

	FUNC2(iforce->serio, 0x2b);

	FUNC2(iforce->serio, iforce->xmit.buf[iforce->xmit.tail]);
	cs ^= iforce->xmit.buf[iforce->xmit.tail];
	FUNC0(iforce->xmit.tail, 1);

	for (i=iforce->xmit.buf[iforce->xmit.tail]; i >= 0; --i) {
		FUNC2(iforce->serio, iforce->xmit.buf[iforce->xmit.tail]);
		cs ^= iforce->xmit.buf[iforce->xmit.tail];
		FUNC0(iforce->xmit.tail, 1);
	}

	FUNC2(iforce->serio, cs);

	if (FUNC6(IFORCE_XMIT_AGAIN, iforce->xmit_flags))
		goto again;

	FUNC1(IFORCE_XMIT_RUNNING, iforce->xmit_flags);

	FUNC5(&iforce->xmit_lock, flags);
}