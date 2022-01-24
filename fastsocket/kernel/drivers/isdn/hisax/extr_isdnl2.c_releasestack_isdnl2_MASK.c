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
struct TYPE_2__ {int /*<<< orphan*/  ui_queue; int /*<<< orphan*/  i_queue; int /*<<< orphan*/  t203; int /*<<< orphan*/  t200; } ;
struct PStack {TYPE_1__ l2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct PStack *st)
{
	FUNC0(&st->l2.t200, 21);
	FUNC0(&st->l2.t203, 16);
	FUNC2(&st->l2.i_queue);
	FUNC2(&st->l2.ui_queue);
	FUNC1(&st->l2);
}