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
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  NPHY_RSSI_SEL_NB ; 
 int /*<<< orphan*/  NPHY_RSSI_SEL_W1 ; 
 int /*<<< orphan*/  NPHY_RSSI_SEL_W2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*) ; 

void FUNC3(struct brcms_phy *pi)
{
	if (FUNC0(pi->pubpi.phy_rev, 3)) {
		FUNC2(pi);
	} else {
		FUNC1(pi, NPHY_RSSI_SEL_NB);
		FUNC1(pi, NPHY_RSSI_SEL_W1);
		FUNC1(pi, NPHY_RSSI_SEL_W2);
	}
}