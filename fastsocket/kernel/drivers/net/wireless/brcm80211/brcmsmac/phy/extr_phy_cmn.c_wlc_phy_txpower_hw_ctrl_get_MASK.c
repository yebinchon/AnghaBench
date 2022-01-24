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
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int nphy_txpwrctrl; int hwpwrctrl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct brcms_phy*) ; 

bool FUNC1(struct brcms_phy_pub *ppi)
{
	struct brcms_phy *pi = (struct brcms_phy *) ppi;

	if (FUNC0(pi))
		return pi->nphy_txpwrctrl;
	else
		return pi->hwpwrctrl;
}