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

/* Variables and functions */
 unsigned long FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int FUNC2(struct pt_regs *regs)
{
	unsigned long reason = FUNC0(regs);

	FUNC1("Machine check in kernel mode.\n");
	FUNC1("Caused by (from SRR1=%lx): ", reason);
	switch (reason & 0x601F0000) {
	case 0x80000:
		FUNC1("Machine check signal\n");
		break;
	case 0:		/* for 601 */
	case 0x40000:
	case 0x140000:	/* 7450 MSS error and TEA */
		FUNC1("Transfer error ack signal\n");
		break;
	case 0x20000:
		FUNC1("Data parity error signal\n");
		break;
	case 0x10000:
		FUNC1("Address parity error signal\n");
		break;
	case 0x20000000:
		FUNC1("L1 Data Cache error\n");
		break;
	case 0x40000000:
		FUNC1("L1 Instruction Cache error\n");
		break;
	case 0x00100000:
		FUNC1("L2 data cache parity error\n");
		break;
	default:
		FUNC1("Unknown values in msr\n");
	}
	return 0;
}