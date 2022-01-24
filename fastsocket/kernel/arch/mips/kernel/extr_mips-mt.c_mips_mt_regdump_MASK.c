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

/* Variables and functions */
 unsigned long MVPCONF0_PTC ; 
 unsigned long MVPCONF0_PTC_SHIFT ; 
 unsigned long MVPCONF0_PVPE ; 
 unsigned long MVPCONF0_PVPE_SHIFT ; 
 int TCBIND_CURVPE ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 unsigned long FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 unsigned long FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 unsigned long FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

void FUNC20(unsigned long mvpctl)
{
	unsigned long flags;
	unsigned long vpflags;
	unsigned long mvpconf0;
	int nvpe;
	int ntc;
	int i;
	int tc;
	unsigned long haltval;
	unsigned long tcstatval;
#ifdef CONFIG_MIPS_MT_SMTC
	void smtc_soft_dump(void);
#endif /* CONFIG_MIPT_MT_SMTC */

	FUNC3(flags);
	vpflags = FUNC0();
	FUNC4("=== MIPS MT State Dump ===\n");
	FUNC4("-- Global State --\n");
	FUNC4("   MVPControl Passed: %08lx\n", mvpctl);
	FUNC4("   MVPControl Read: %08lx\n", vpflags);
	FUNC4("   MVPConf0 : %08lx\n", (mvpconf0 = FUNC5()));
	nvpe = ((mvpconf0 & MVPCONF0_PVPE) >> MVPCONF0_PVPE_SHIFT) + 1;
	ntc = ((mvpconf0 & MVPCONF0_PTC) >> MVPCONF0_PTC_SHIFT) + 1;
	FUNC4("-- per-VPE State --\n");
	for (i = 0; i < nvpe; i++) {
		for (tc = 0; tc < ntc; tc++) {
			FUNC18(tc);
			if ((FUNC7() & TCBIND_CURVPE) == i) {
				FUNC4("  VPE %d\n", i);
				FUNC4("   VPEControl : %08lx\n",
				       FUNC17());
				FUNC4("   VPEConf0 : %08lx\n",
				       FUNC16());
				FUNC4("   VPE%d.Status : %08lx\n",
				       i, FUNC15());
				FUNC4("   VPE%d.EPC : %08lx %pS\n",
				       i, FUNC14(),
				       (void *) FUNC14());
				FUNC4("   VPE%d.Cause : %08lx\n",
				       i, FUNC12());
				FUNC4("   VPE%d.Config7 : %08lx\n",
				       i, FUNC13());
				break; /* Next VPE */
			}
		}
	}
	FUNC4("-- per-TC State --\n");
	for (tc = 0; tc < ntc; tc++) {
		FUNC18(tc);
		if (FUNC7() == FUNC6()) {
			/* Are we dumping ourself?  */
			haltval = 0; /* Then we're not halted, and mustn't be */
			tcstatval = flags; /* And pre-dump TCStatus is flags */
			FUNC4("  TC %d (current TC with VPE EPC above)\n", tc);
		} else {
			haltval = FUNC9();
			FUNC19(1);
			tcstatval = FUNC11();
			FUNC4("  TC %d\n", tc);
		}
		FUNC4("   TCStatus : %08lx\n", tcstatval);
		FUNC4("   TCBind : %08lx\n", FUNC7());
		FUNC4("   TCRestart : %08lx %pS\n",
		       FUNC10(), (void *) FUNC10());
		FUNC4("   TCHalt : %08lx\n", haltval);
		FUNC4("   TCContext : %08lx\n", FUNC8());
		if (!haltval)
			FUNC19(0);
	}
#ifdef CONFIG_MIPS_MT_SMTC
	smtc_soft_dump();
#endif /* CONFIG_MIPT_MT_SMTC */
	FUNC4("===========================\n");
	FUNC1(vpflags);
	FUNC2(flags);
}