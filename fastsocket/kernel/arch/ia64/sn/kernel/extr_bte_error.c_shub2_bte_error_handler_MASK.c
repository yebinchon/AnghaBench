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
typedef  int u64 ;
struct timer_list {int dummy; } ;
struct nodepda_s {struct bteinfo_s* bte_if; struct timer_list bte_recovery_timer; } ;
struct bteinfo_s {int /*<<< orphan*/  bh_error; int /*<<< orphan*/  bte_cnode; } ;
typedef  int /*<<< orphan*/  nasid_t ;

/* Variables and functions */
 int BTES_PER_NODE ; 
 int FUNC0 (struct bteinfo_s*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int HZ ; 
 int IBLS_BUSY ; 
 int IBLS_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct timer_list*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct timer_list*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(unsigned long _nodepda)
{
	struct nodepda_s *err_nodepda = (struct nodepda_s *)_nodepda;
	struct timer_list *recovery_timer = &err_nodepda->bte_recovery_timer;
	struct bteinfo_s *bte;
	nasid_t nasid;
	u64 status;
	int i;

	nasid = FUNC3(err_nodepda->bte_if[0].bte_cnode);

	/*
	 * Verify that all the BTEs are complete
	 */
	for (i = 0; i < BTES_PER_NODE; i++) {
		bte = &err_nodepda->bte_if[i];
		status = FUNC0(bte);
		if (status & IBLS_ERROR) {
			bte->bh_error = FUNC2(status);
			continue;
		}
		if (!(status & IBLS_BUSY))
			continue;
		FUNC6(recovery_timer, jiffies + (HZ * 5));
		FUNC1(("eh:%p:%d Marked Giving up\n", err_nodepda,
			    FUNC8()));
		return 1;
	}
	if (FUNC5(nasid))
		FUNC7("bte_error_handler(): Fatal BTE Error");

	FUNC4(recovery_timer);
	return 0;
}