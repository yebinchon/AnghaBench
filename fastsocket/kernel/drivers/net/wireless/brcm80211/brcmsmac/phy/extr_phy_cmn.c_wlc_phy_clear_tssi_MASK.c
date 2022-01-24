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
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct brcms_phy*) ; 
 int /*<<< orphan*/  M_B_TSSI_0 ; 
 int /*<<< orphan*/  M_B_TSSI_1 ; 
 int /*<<< orphan*/  M_G_TSSI_0 ; 
 int /*<<< orphan*/  M_G_TSSI_1 ; 
 int /*<<< orphan*/  NULL_TSSI_W ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct brcms_phy_pub *pih)
{
	struct brcms_phy *pi = (struct brcms_phy *) pih;

	if (FUNC0(pi)) {
		return;
	} else {
		FUNC1(pi->sh->physhim, M_B_TSSI_0, NULL_TSSI_W);
		FUNC1(pi->sh->physhim, M_B_TSSI_1, NULL_TSSI_W);
		FUNC1(pi->sh->physhim, M_G_TSSI_0, NULL_TSSI_W);
		FUNC1(pi->sh->physhim, M_G_TSSI_1, NULL_TSSI_W);
	}
}