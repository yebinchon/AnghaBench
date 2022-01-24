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
 int DEST_RM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FPU_rm ; 
 int REV ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  control_word ; 

void FUNC3(void)
{
	/* fdivp st(i),st */
	FUNC2();
	if (FUNC0(REV | DEST_RM, FPU_rm, control_word) >= 0)
		FUNC1();
}