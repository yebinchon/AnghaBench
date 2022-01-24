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
struct chp_id {int id; } ;

/* Variables and functions */
 int RCHP_TIMEOUT ; 
 int __MAX_CHPID ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  __shutdown_subchannel_easy ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct chp_id*) ; 
 int /*<<< orphan*/  chpid_reset_count ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long long FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct chp_id) ; 
 int /*<<< orphan*/ * s390_base_mcck_handler_fn ; 
 int /*<<< orphan*/ * s390_reset_chpids_mcck_handler ; 

__attribute__((used)) static void FUNC11(void)
{
	int i, ret;
	unsigned long long timeout;
	struct chp_id chpid;

	/* Reset subchannels. */
	FUNC6(__shutdown_subchannel_easy,  NULL);
	/* Reset channel paths. */
	s390_base_mcck_handler_fn = s390_reset_chpids_mcck_handler;
	/* Enable channel report machine checks. */
	FUNC1(14, 28);
	/* Temporarily reenable machine checks. */
	FUNC9();
	FUNC4(&chpid);
	for (i = 0; i <= __MAX_CHPID; i++) {
		chpid.id = i;
		ret = FUNC10(chpid);
		if ((ret == 0) || (ret == 2))
			/*
			 * rchp either succeeded, or another rchp is already
			 * in progress. In either case, we'll get a crw.
			 */
			FUNC2(&chpid_reset_count);
	}
	/* Wait for machine check for all channel paths. */
	timeout = FUNC7() + (RCHP_TIMEOUT << 12);
	while (FUNC3(&chpid_reset_count) != 0) {
		if (FUNC7() > timeout)
			break;
		FUNC5();
	}
	/* Disable machine checks again. */
	FUNC8();
	/* Disable channel report machine checks. */
	FUNC0(14, 28);
	s390_base_mcck_handler_fn = NULL;
}