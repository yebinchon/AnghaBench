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
struct desc_ptr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,struct desc_ptr) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct desc_ptr*) ; 
 int /*<<< orphan*/  FUNC3 (struct desc_ptr*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void FUNC6(void *seq)
{
	struct desc_ptr dt;
	unsigned long ldt;

	/* IDT */
	FUNC3((struct desc_ptr *)&dt);
	FUNC0("IDT", seq, dt);

	/* GDT */
	FUNC2((struct desc_ptr *)&dt);
	FUNC0("GDT", seq, dt);

	/* LDT */
	FUNC4(ldt);
	FUNC1(seq, " LDT\t: %016lx\n", ldt);

	/* TR */
	FUNC5(ldt);
	FUNC1(seq, " TR\t: %016lx\n", ldt);
}