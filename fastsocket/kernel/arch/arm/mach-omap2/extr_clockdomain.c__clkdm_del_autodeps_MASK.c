#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* ptr; } ;
struct clockdomain {TYPE_1__ pwrdm; } ;
struct TYPE_9__ {TYPE_4__* ptr; } ;
struct clkdm_pwrdm_autodep {TYPE_2__ pwrdm; int /*<<< orphan*/  omap_chip; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 struct clkdm_pwrdm_autodep* autodeps ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*) ; 

__attribute__((used)) static void FUNC5(struct clockdomain *clkdm)
{
	struct clkdm_pwrdm_autodep *autodep;

	for (autodep = autodeps; autodep->pwrdm.ptr; autodep++) {
		if (FUNC0(autodep->pwrdm.ptr))
			continue;

		if (!FUNC1(autodep->omap_chip))
			continue;

		FUNC2("clockdomain: removing %s sleepdep/wkdep for "
			 "pwrdm %s\n", autodep->pwrdm.ptr->name,
			 clkdm->pwrdm.ptr->name);

		FUNC3(clkdm->pwrdm.ptr, autodep->pwrdm.ptr);
		FUNC4(clkdm->pwrdm.ptr, autodep->pwrdm.ptr);
	}
}