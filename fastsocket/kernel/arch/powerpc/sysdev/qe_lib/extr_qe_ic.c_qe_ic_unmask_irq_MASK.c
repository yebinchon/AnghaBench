#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct qe_ic {int /*<<< orphan*/  regs; } ;
struct TYPE_2__ {int mask; int /*<<< orphan*/  mask_reg; } ;

/* Variables and functions */
 struct qe_ic* FUNC0 (unsigned int) ; 
 TYPE_1__* qe_ic_info ; 
 int /*<<< orphan*/  qe_ic_lock ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC5 (unsigned int) ; 

__attribute__((used)) static void FUNC6(unsigned int virq)
{
	struct qe_ic *qe_ic = FUNC0(virq);
	unsigned int src = FUNC5(virq);
	unsigned long flags;
	u32 temp;

	FUNC3(&qe_ic_lock, flags);

	temp = FUNC1(qe_ic->regs, qe_ic_info[src].mask_reg);
	FUNC2(qe_ic->regs, qe_ic_info[src].mask_reg,
		    temp | qe_ic_info[src].mask);

	FUNC4(&qe_ic_lock, flags);
}