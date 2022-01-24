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
 int ENOMEM ; 
 int /*<<< orphan*/  NES_DBG_CM ; 
 scalar_t__ g_cm_core ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

int FUNC2(void)
{
	FUNC1(NES_DBG_CM, "\n");
	/* create the primary CM core, pass this handle to subsequent core inits */
	g_cm_core = FUNC0();
	if (g_cm_core)
		return 0;
	else
		return -ENOMEM;
}