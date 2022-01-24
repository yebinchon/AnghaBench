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
typedef  int uint ;
struct brcms_phy {int /*<<< orphan*/  phycal_timer; TYPE_1__* sh; } ;
struct TYPE_2__ {int /*<<< orphan*/  up; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_PERICAL_AUTO ; 
 scalar_t__ FUNC0 (struct brcms_phy*) ; 
 scalar_t__ FUNC1 (struct brcms_phy*) ; 
 scalar_t__ FUNC2 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct brcms_phy *pi)
{
	uint delay = 5;

	if (FUNC0(pi)) {
		if (!pi->sh->up) {
			FUNC4(pi);
			return;
		}

		if (FUNC2(pi) || FUNC1(pi)) {

			delay = 1000;
			FUNC5(pi);
		} else
			FUNC6(pi, PHY_PERICAL_AUTO);
		FUNC3(pi->phycal_timer, delay, 0);
		return;
	}

}