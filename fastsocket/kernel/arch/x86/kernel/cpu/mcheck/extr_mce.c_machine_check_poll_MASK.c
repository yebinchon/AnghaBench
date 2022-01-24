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
struct mce {int bank; int status; scalar_t__ tsc; scalar_t__ addr; scalar_t__ misc; } ;
typedef  int /*<<< orphan*/  mce_banks_t ;
typedef  enum mcp_flags { ____Placeholder_mcp_flags } mcp_flags ;
struct TYPE_2__ {int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int MCI_STATUS_S ; 
 int MCI_STATUS_UC ; 
 int MCI_STATUS_VAL ; 
 int MCP_DONTLOG ; 
 int MCP_TIMESTAMP ; 
 int MCP_UC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int banks ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* mce_banks ; 
 int /*<<< orphan*/  mce_dont_log_ce ; 
 int /*<<< orphan*/  FUNC2 (struct mce*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mce*) ; 
 int /*<<< orphan*/  mce_poll_count ; 
 scalar_t__ FUNC4 (int,struct mce*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mce*,int) ; 
 scalar_t__ mce_ser ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

void FUNC11(enum mcp_flags flags, mce_banks_t *b)
{
	struct mce m;
	int i;

	FUNC8(mce_poll_count);

	FUNC2(&m, NULL);

	for (i = 0; i < banks; i++) {
		if (!mce_banks[i].ctl || !FUNC10(i, *b))
			continue;

		m.misc = 0;
		m.addr = 0;
		m.bank = i;
		m.tsc = 0;

		FUNC1();
		m.status = FUNC5(FUNC0(i));
		if (!(m.status & MCI_STATUS_VAL))
			continue;

		if (FUNC4(i, &m))
			continue;

		/*
		 * Uncorrected or signalled events are handled by the exception
		 * handler when it is enabled, so don't process those here.
		 *
		 * TBD do the same check for MCI_STATUS_EN here?
		 */
		if (!(flags & MCP_UC) &&
		    (m.status & (mce_ser ? MCI_STATUS_S : MCI_STATUS_UC)))
			continue;

		FUNC6(&m, i);

		if (!(flags & MCP_TIMESTAMP))
			m.tsc = 0;
		/*
		 * Don't get the IP here because it's unlikely to
		 * have anything to do with the actual error location.
		 */
		if (!(flags & MCP_DONTLOG) && !mce_dont_log_ce)
			FUNC3(&m);

		/*
		 * Clear state for this bank.
		 */
		FUNC7(FUNC0(i), 0);
	}

	/*
	 * Don't clear MCG_STATUS here because it's only defined for
	 * exceptions.
	 */

	FUNC9();
}