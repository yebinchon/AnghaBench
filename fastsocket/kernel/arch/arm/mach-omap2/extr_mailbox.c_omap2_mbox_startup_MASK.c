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
typedef  int u32 ;
struct omap_mbox {int dummy; } ;

/* Variables and functions */
 int AUTOIDLE ; 
 int ENODEV ; 
 int /*<<< orphan*/  IRQ_RX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAILBOX_REVISION ; 
 int /*<<< orphan*/  MAILBOX_SYSCONFIG ; 
 int /*<<< orphan*/  MAILBOX_SYSSTATUS ; 
 int RESETDONE ; 
 int SMARTIDLE ; 
 int SOFTRESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  mbox_ick_handle ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct omap_mbox *mbox)
{
	u32 l;
	unsigned long timeout;

	mbox_ick_handle = FUNC2(NULL, "mailboxes_ick");
	if (FUNC0(mbox_ick_handle)) {
		FUNC7("Can't get mailboxes_ick\n");
		return -ENODEV;
	}
	FUNC1(mbox_ick_handle);

	FUNC4(SOFTRESET, MAILBOX_SYSCONFIG);
	timeout = jiffies + FUNC5(20);
	do {
		l = FUNC3(MAILBOX_SYSSTATUS);
		if (l & RESETDONE)
			break;
	} while (!FUNC9(jiffies, timeout));

	if (!(l & RESETDONE)) {
		FUNC7("Can't take mmu out of reset\n");
		return -ENODEV;
	}

	l = FUNC3(MAILBOX_REVISION);
	FUNC8("omap mailbox rev %d.%d\n", (l & 0xf0) >> 4, (l & 0x0f));

	l = SMARTIDLE | AUTOIDLE;
	FUNC4(l, MAILBOX_SYSCONFIG);

	FUNC6(mbox, IRQ_RX);

	return 0;
}