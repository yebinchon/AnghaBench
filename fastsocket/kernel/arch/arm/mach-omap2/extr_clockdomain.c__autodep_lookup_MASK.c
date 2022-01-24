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
struct powerdomain {int dummy; } ;
struct TYPE_2__ {struct powerdomain* ptr; int /*<<< orphan*/  name; } ;
struct clkdm_pwrdm_autodep {TYPE_1__ pwrdm; int /*<<< orphan*/  omap_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct powerdomain* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct powerdomain* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct clkdm_pwrdm_autodep *autodep)
{
	struct powerdomain *pwrdm;

	if (!autodep)
		return;

	if (!FUNC1(autodep->omap_chip))
		return;

	pwrdm = FUNC3(autodep->pwrdm.name);
	if (!pwrdm) {
		FUNC2("clockdomain: autodeps: powerdomain %s does not exist\n",
			 autodep->pwrdm.name);
		pwrdm = FUNC0(-ENOENT);
	}
	autodep->pwrdm.ptr = pwrdm;
}