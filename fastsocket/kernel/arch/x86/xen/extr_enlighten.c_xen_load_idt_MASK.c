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
struct trap_info {int dummy; } ;
struct desc_ptr {int dummy; } ;
typedef  struct desc_ptr __get_cpu_var ;
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct trap_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct desc_ptr const*,struct trap_info*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(const struct desc_ptr *desc)
{
	static DEFINE_SPINLOCK(lock);
	static struct trap_info traps[257];

	FUNC2(&lock);

	__get_cpu_var(idt_desc) = *desc;

	FUNC4(desc, traps);

	FUNC5();
	if (FUNC1(traps))
		FUNC0();

	FUNC3(&lock);
}