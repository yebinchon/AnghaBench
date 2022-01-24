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
struct TYPE_3__ {int /*<<< orphan*/ * res; int /*<<< orphan*/  car_rmr; } ;
struct TYPE_4__ {TYPE_1__ im_clkrst; } ;

/* Variables and functions */
 int MSR_DR ; 
 int MSR_EE ; 
 int MSR_IR ; 
 int MSR_ME ; 
 int /*<<< orphan*/  RMR_CSRE ; 
 TYPE_2__* cpm2_immr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(char *cmd)
{
	FUNC1();
	FUNC5(&cpm2_immr->im_clkrst.car_rmr, RMR_CSRE);

	/* Clear the ME,EE,IR & DR bits in MSR to cause checkstop */
	FUNC3(FUNC2() & ~(MSR_ME | MSR_EE | MSR_IR | MSR_DR));
	FUNC0(&cpm2_immr->im_clkrst.res[0]);

	FUNC4("Restart failed\n");
}