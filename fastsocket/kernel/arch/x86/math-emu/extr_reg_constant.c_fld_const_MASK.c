#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int sigl; } ;
typedef  TYPE_1__ FPU_REG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ STACK_OVERFLOW ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(FPU_REG const * c, int adj, u_char tag)
{
	FPU_REG *st_new_ptr;

	if (STACK_OVERFLOW) {
		FUNC1();
		return;
	}
	FUNC3();
	FUNC4(c, st_new_ptr);
	st_new_ptr->sigl += adj;	/* For all our fldxxx constants, we don't need to
					   borrow or carry. */
	FUNC0(tag);
	FUNC2();
}