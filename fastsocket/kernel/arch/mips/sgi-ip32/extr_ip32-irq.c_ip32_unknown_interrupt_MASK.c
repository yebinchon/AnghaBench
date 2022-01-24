#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  hard_int; int /*<<< orphan*/  istat; int /*<<< orphan*/  imask; } ;
struct TYPE_6__ {int /*<<< orphan*/  control; } ;
struct TYPE_8__ {int /*<<< orphan*/  istat; int /*<<< orphan*/  imask; } ;
struct TYPE_7__ {TYPE_3__ ctrl; } ;
struct TYPE_9__ {TYPE_1__ pci; TYPE_2__ perif; } ;

/* Variables and functions */
 TYPE_5__* crime ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_4__* mace ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	FUNC1("Unknown interrupt occurred!\n");
	FUNC1("cp0_status: %08x\n", FUNC3());
	FUNC1("cp0_cause: %08x\n", FUNC2());
	FUNC1("CRIME intr mask: %016lx\n", crime->imask);
	FUNC1("CRIME intr status: %016lx\n", crime->istat);
	FUNC1("CRIME hardware intr register: %016lx\n", crime->hard_int);
	FUNC1("MACE ISA intr mask: %08lx\n", mace->perif.ctrl.imask);
	FUNC1("MACE ISA intr status: %08lx\n", mace->perif.ctrl.istat);
	FUNC1("MACE PCI control register: %08x\n", mace->pci.control);

	FUNC1("Register dump:\n");
	FUNC4(FUNC0());

	FUNC1("Please mail this report to linux-mips@linux-mips.org\n");
	FUNC1("Spinning...");
	while(1) ;
}