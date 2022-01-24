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
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 

void FUNC4(const char *str, struct pt_regs *regs, const char *file,
	const char *func, unsigned long line)
{
	FUNC0();
	FUNC2("%s", str);
	if (file && func)
		FUNC2(" in %s:%s, line %ld", file, func, line);
	FUNC2(":\n");
	FUNC3(regs);
	FUNC1(SIGSEGV);
}