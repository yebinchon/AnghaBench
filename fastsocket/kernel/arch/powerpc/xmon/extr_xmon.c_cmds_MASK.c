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
struct pt_regs {int /*<<< orphan*/  nip; int /*<<< orphan*/  link; int /*<<< orphan*/ * gpr; } ;

/* Variables and functions */
#define  EOF 128 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  help_string ; 
 int FUNC13 () ; 
 int /*<<< orphan*/ * last_cmd ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 () ; 
 int FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int termch ; 
 int xmon_no_auto_backtrace ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 struct pt_regs* xmon_regs ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC31(struct pt_regs *excp)
{
	int cmd = 0;

	last_cmd = NULL;
	xmon_regs = excp;

	if (!xmon_no_auto_backtrace) {
		xmon_no_auto_backtrace = 1;
		FUNC30(excp->gpr[1], excp->link, excp->nip);
	}

	for(;;) {
#ifdef CONFIG_SMP
		printf("%x:", smp_processor_id());
#endif /* CONFIG_SMP */
		FUNC19("mon> ");
		FUNC12();
		termch = 0;
		cmd = FUNC24();
		if( cmd == '\n' ) {
			if (last_cmd == NULL)
				continue;
			FUNC28(last_cmd);
			last_cmd = NULL;
			cmd = FUNC13();
		}
		switch (cmd) {
		case 'm':
			cmd = FUNC13();
			switch (cmd) {
			case 'm':
			case 's':
			case 'd':
				FUNC17(cmd);
				break;
			case 'l':
				FUNC16();
				break;
			case 'z':
				FUNC18();
				break;
			case 'i':
				FUNC23(0);
				break;
			default:
				termch = cmd;
				FUNC15();
			}
			break;
		case 'd':
			FUNC8();
			break;
		case 'l':
			FUNC27();
			break;
		case 'r':
			FUNC21(excp);	/* print regs */
			break;
		case 'e':
			FUNC11(excp);
			break;
		case 'S':
			FUNC26();
			break;
		case 't':
			FUNC0(excp);
			break;
		case 'f':
			FUNC3();
			break;
		case 's':
			if (FUNC6() == 0)
				break;
			if (FUNC7(excp))
				return cmd;
			break;
		case 'x':
		case 'X':
			return cmd;
		case EOF:
			FUNC19(" <no input ...>\n");
			FUNC14(2000);
			return cmd;
		case '?':
			FUNC29(help_string);
			break;
		case 'b':
			FUNC2();
			break;
		case 'C':
			FUNC5();
			break;
		case 'c':
			if (FUNC4())
				return 0;
			break;
		case 'z':
			FUNC1();
			break;
		case 'p':
			FUNC20();
			break;
#ifdef CONFIG_PPC_STD_MMU
		case 'u':
			dump_segments();
			break;
#endif
#ifdef CONFIG_4xx
		case 'u':
			dump_tlb_44x();
			break;
#endif
		default:
			FUNC19("Unrecognized command: ");
		        do {
				if (' ' < cmd && cmd <= '~')
					FUNC22(cmd);
				else
					FUNC19("\\x%x", cmd);
				cmd = FUNC13();
		        } while (cmd != '\n'); 
			FUNC19(" (type ? for help)\n");
			break;
		}
	}
}