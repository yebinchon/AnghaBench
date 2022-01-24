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
struct TYPE_2__ {unsigned long itc_offset; unsigned long itc_last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* XEN_MAPPEDREGS ; 
 int /*<<< orphan*/  _IA64_REG_AR_ITC ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(unsigned long val)
{
	unsigned long mitc;

	FUNC0(!FUNC2());
	mitc = FUNC1(_IA64_REG_AR_ITC);
	XEN_MAPPEDREGS->itc_offset = val - mitc;
	XEN_MAPPEDREGS->itc_last = val;
}