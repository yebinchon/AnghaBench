#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ reset; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* redo ) () ;int /*<<< orphan*/  (* error ) () ;} ;

/* Variables and functions */
 TYPE_2__* FDCS ; 
 TYPE_1__* cont ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
	FUNC0("reset interrupt:");
	FUNC2();		/* get the status ready for set_fdc */
	if (FDCS->reset) {
		FUNC1("reset set in interrupt, calling %p\n", cont->error);
		cont->error();	/* a reset just after a reset. BAD! */
	}
	cont->redo();
}