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
struct brcms_phy {scalar_t__ nphy_deaf_count; TYPE_1__* sh; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int) ; 

void FUNC3(struct brcms_phy *pi, bool mode)
{
	FUNC1(pi->sh->physhim);

	if (mode) {
		if (pi->nphy_deaf_count == 0)
			FUNC2(pi, true);
	} else if (pi->nphy_deaf_count > 0) {
		FUNC2(pi, false);
	}

	FUNC0(pi->sh->physhim);
}