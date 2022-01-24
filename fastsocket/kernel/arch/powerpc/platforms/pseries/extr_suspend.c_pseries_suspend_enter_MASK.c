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
typedef  int /*<<< orphan*/  suspend_state_t ;
struct TYPE_3__ {int done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ suspend_data ; 
 scalar_t__ suspending ; 

__attribute__((used)) static int FUNC3(suspend_state_t state)
{
	int rc = FUNC1(&suspend_data);

	FUNC2(); /* Ensure done is ordered wrt suspend_data.error */
	suspending = 0;
	suspend_data.done = 1;

	/* Ensure suspending and suspend_data.done is seen on all CPUs,
	 since they will be waking up shortly */
	FUNC0();
	return rc;
}