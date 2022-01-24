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

/* Variables and functions */
 int cached_21 ; 
 int cached_A1 ; 
 int /*<<< orphan*/  i8259_lock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned int irq_nr)
{
	unsigned long flags;

	FUNC2(&i8259_lock, flags);
	if (irq_nr > 7) {
		cached_A1 |= 1 << (irq_nr-8);
		FUNC0(0xA1); 	/* DUMMY */
		FUNC1(cached_A1, 0xA1);
		FUNC1(0x20, 0xA0);	/* Non-specific EOI */
		FUNC1(0x20, 0x20);	/* Non-specific EOI to cascade */
	} else {
		cached_21 |= 1 << irq_nr;
		FUNC0(0x21); 	/* DUMMY */
		FUNC1(cached_21, 0x21);
		FUNC1(0x20, 0x20);	/* Non-specific EOI */
	}
	FUNC3(&i8259_lock, flags);
}