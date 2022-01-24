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
struct mm_struct {int context; } ;

/* Variables and functions */
 int ASID_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline void
FUNC4(struct mm_struct *mm)
{
	unsigned long flags;

	FUNC2(flags);
	FUNC0(mm);
	FUNC3(mm->context & ASID_MASK);
	FUNC1(flags);
}