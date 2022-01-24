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
struct TYPE_2__ {int /*<<< orphan*/  squeue; int /*<<< orphan*/  l3m_timer; int /*<<< orphan*/ * global; scalar_t__ proc; } ;
struct PStack {TYPE_1__ l3; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct PStack *st)
{
	while (st->l3.proc)
		FUNC3(st->l3.proc);
	if (st->l3.global) {
		FUNC1(st->l3.global);
		FUNC2(st->l3.global);
		st->l3.global = NULL;
	}
	FUNC0(&st->l3.l3m_timer, 54);
	FUNC4(&st->l3.squeue);
}