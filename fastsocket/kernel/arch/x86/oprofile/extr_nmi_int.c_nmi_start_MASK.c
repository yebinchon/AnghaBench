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
 int ctr_running ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  nmi_cpu_start ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(void)
{
	FUNC0();
	FUNC1(nmi_cpu_start, NULL, 1);
	ctr_running = 1;
	FUNC2();
	return 0;
}