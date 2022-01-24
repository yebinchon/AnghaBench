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
typedef  int /*<<< orphan*/  u32 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int /*<<< orphan*/  measure_hold; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct brcms_phy_pub *pih, u32 id, bool set)
{
	struct brcms_phy *pi = (struct brcms_phy *) pih;

	if (set)
		FUNC1(pi->measure_hold, id);
	else
		FUNC0(pi->measure_hold, id);

	return;
}