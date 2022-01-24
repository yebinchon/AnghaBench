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
typedef  unsigned long (* callfunc_t ) (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;

/* Variables and functions */
 unsigned long adrs ; 
 int /*<<< orphan*/  bus_error_jmp ; 
 int catch_memory_errors ; 
 int fault_except ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char termch ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long args[8];
	unsigned long ret;
	int i;
	typedef unsigned long (*callfunc_t)(unsigned long, unsigned long,
			unsigned long, unsigned long, unsigned long,
			unsigned long, unsigned long, unsigned long);
	callfunc_t func;

	if (!FUNC1(&adrs))
		return;
	if (termch != '\n')
		termch = 0;
	for (i = 0; i < 8; ++i)
		args[i] = 0;
	for (i = 0; i < 8; ++i) {
		if (!FUNC1(&args[i]) || termch == '\n')
			break;
		termch = 0;
	}
	func = (callfunc_t) adrs;
	ret = 0;
	if (FUNC2(bus_error_jmp) == 0) {
		catch_memory_errors = 1;
		FUNC3();
		ret = func(args[0], args[1], args[2], args[3],
			   args[4], args[5], args[6], args[7]);
		FUNC3();
		FUNC0("return value is %x\n", ret);
	} else {
		FUNC0("*** %x exception occurred\n", fault_except);
	}
	catch_memory_errors = 0;
}