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
struct brcms_phy {scalar_t__ nphy_iqcal_chanspec_5G; scalar_t__ nphy_iqcal_chanspec_2G; scalar_t__ phycal_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

int FUNC1(struct brcms_phy_pub *pih)
{
	struct brcms_phy *pi = (struct brcms_phy *) pih;
	int callbacks = 0;

	if (pi->phycal_timer
	    && !FUNC0(pi->phycal_timer))
		callbacks++;

	pi->nphy_iqcal_chanspec_2G = 0;
	pi->nphy_iqcal_chanspec_5G = 0;

	return callbacks;
}