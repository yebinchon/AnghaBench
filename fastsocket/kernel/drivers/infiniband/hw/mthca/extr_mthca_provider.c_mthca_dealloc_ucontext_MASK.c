#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ib_ucontext {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {int /*<<< orphan*/  uar; int /*<<< orphan*/  db_tab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct ib_ucontext*) ; 

__attribute__((used)) static int FUNC5(struct ib_ucontext *context)
{
	FUNC1(FUNC3(context->device), &FUNC4(context)->uar,
				  FUNC4(context)->db_tab);
	FUNC2(FUNC3(context->device), &FUNC4(context)->uar);
	FUNC0(FUNC4(context));

	return 0;
}