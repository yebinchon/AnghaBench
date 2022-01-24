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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *arg)
{
	struct seq_file *seq = arg;

	FUNC5(seq, " cr0\t: %016lx\n", FUNC0());
	FUNC5(seq, " cr2\t: %016lx\n", FUNC1());
	FUNC5(seq, " cr3\t: %016lx\n", FUNC2());
	FUNC5(seq, " cr4\t: %016lx\n", FUNC3());
#ifdef CONFIG_X86_64
	seq_printf(seq, " cr8\t: %016lx\n", read_cr8());
#endif
}