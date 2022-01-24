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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct scx200_acb_iface {size_t state; int needs_reset; int /*<<< orphan*/  result; TYPE_1__ adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACBST ; 
 int ACBST_BER ; 
 int ACBST_NEGACK ; 
 int ACBST_SDAST ; 
 int /*<<< orphan*/  EIO ; 
 unsigned long POLL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scx200_acb_iface*,int) ; 
 int /*<<< orphan*/ * scx200_acb_state_name ; 
 size_t state_idle ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct scx200_acb_iface *iface)
{
	u8 status;
	unsigned long timeout;

	timeout = jiffies + POLL_TIMEOUT;
	while (1) {
		status = FUNC3(ACBST);

		/* Reset the status register to avoid the hang */
		FUNC4(0, ACBST);

		if ((status & (ACBST_SDAST|ACBST_BER|ACBST_NEGACK)) != 0) {
			FUNC5(iface, status);
			return;
		}
		if (FUNC6(jiffies, timeout))
			break;
		FUNC1();
		FUNC0();
	}

	FUNC2(&iface->adapter.dev, "timeout in state %s\n",
		scx200_acb_state_name[iface->state]);

	iface->state = state_idle;
	iface->result = -EIO;
	iface->needs_reset = 1;
}