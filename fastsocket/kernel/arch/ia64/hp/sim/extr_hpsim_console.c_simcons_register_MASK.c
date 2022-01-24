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
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int CON_ENABLED ; 
 TYPE_1__ hpsim_cons ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(void)
{
	if (!FUNC0("hpsim"))
		return 1;

	if (hpsim_cons.flags & CON_ENABLED)
		return 1;

	FUNC1(&hpsim_cons);
	return 0;
}