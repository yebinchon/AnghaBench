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
typedef  scalar_t__ u_char ;
typedef  int /*<<< orphan*/  FPU_REG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EX_INTERNAL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ TAG_Empty ; 
 scalar_t__ TW_NaN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(FPU_REG *st0_ptr, u_char st0_tag)
{
	if (st0_tag == TAG_Empty)
		FUNC1();	/* Puts a QNaN in st(0) */
	else if (st0_tag == TW_NaN)
		FUNC2(st0_ptr);	/* return with a NaN in st(0) */
#ifdef PARANOID
	else
		EXCEPTION(EX_INTERNAL | 0x0112);
#endif /* PARANOID */
}