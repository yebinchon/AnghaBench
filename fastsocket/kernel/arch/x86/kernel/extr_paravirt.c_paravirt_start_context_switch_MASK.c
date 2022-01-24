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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARAVIRT_LAZY_CPU ; 
 scalar_t__ PARAVIRT_LAZY_MMU ; 
 int /*<<< orphan*/  TIF_LAZY_MMU_UPDATES ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  paravirt_lazy_mode ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

void FUNC7(struct task_struct *prev)
{
	FUNC0(FUNC4());

	if (FUNC3(paravirt_lazy_mode) == PARAVIRT_LAZY_MMU) {
		FUNC1();
		FUNC5(FUNC6(prev), TIF_LAZY_MMU_UPDATES);
	}
	FUNC2(PARAVIRT_LAZY_CPU);
}