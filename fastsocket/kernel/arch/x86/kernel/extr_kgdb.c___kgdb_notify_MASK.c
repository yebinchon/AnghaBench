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
struct pt_regs {int dummy; } ;
struct die_args {int /*<<< orphan*/  err; int /*<<< orphan*/  signr; int /*<<< orphan*/  trapnr; struct pt_regs* regs; } ;

/* Variables and functions */
#define  DIE_DEBUG 132 
#define  DIE_NMI 131 
#define  DIE_NMIUNKNOWN 130 
#define  DIE_NMIWATCHDOG 129 
#define  DIE_NMI_IPI 128 
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kgdb_active ; 
 int /*<<< orphan*/  kgdb_cpu_doing_single_step ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct pt_regs*) ; 
 int FUNC3 () ; 
 int FUNC4 (struct pt_regs*,struct die_args*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct pt_regs*) ; 
 int* was_in_debug_nmi ; 

__attribute__((used)) static int FUNC8(struct die_args *args, unsigned long cmd)
{
	struct pt_regs *regs = args->regs;

	switch (cmd) {
	case DIE_NMI:
		if (FUNC0(&kgdb_active) != -1) {
			/* KGDB CPU roundup */
			FUNC2(FUNC3(), regs);
			was_in_debug_nmi[FUNC3()] = 1;
			FUNC6();
			return NOTIFY_STOP;
		}
		return NOTIFY_DONE;

	case DIE_NMI_IPI:
		/* Just ignore, we will handle the roundup on DIE_NMI. */
		return NOTIFY_DONE;

	case DIE_NMIUNKNOWN:
		if (was_in_debug_nmi[FUNC3()]) {
			was_in_debug_nmi[FUNC3()] = 0;
			return NOTIFY_STOP;
		}
		return NOTIFY_DONE;

	case DIE_NMIWATCHDOG:
		if (FUNC0(&kgdb_active) != -1) {
			/* KGDB CPU roundup: */
			FUNC2(FUNC3(), regs);
			return NOTIFY_STOP;
		}
		/* Enter debugger: */
		break;

	case DIE_DEBUG:
		if (FUNC0(&kgdb_cpu_doing_single_step) ==
		    FUNC3()) {
			if (FUNC7(regs))
				return FUNC4(regs, args);
			break;
		} else if (FUNC5(TIF_SINGLESTEP))
			/* This means a user thread is single stepping
			 * a system call which should be ignored
			 */
			return NOTIFY_DONE;
		/* fall through */
	default:
		if (FUNC7(regs))
			return NOTIFY_DONE;
	}

	if (FUNC1(args->trapnr, args->signr, args->err, regs))
		return NOTIFY_DONE;

	/* Must touch watchdog before return to normal operation */
	FUNC6();
	return NOTIFY_STOP;
}