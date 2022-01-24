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
typedef  int /*<<< orphan*/  u16 ;
struct brcms_phy {scalar_t__ phy_wreg; int /*<<< orphan*/  d11core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phyregaddr ; 
 int /*<<< orphan*/  phyregdata ; 

void FUNC3(struct brcms_phy *pi, u16 addr, u16 mask, u16 val)
{
	val &= mask;
	FUNC2(pi->d11core, FUNC0(phyregaddr), addr);
	FUNC1(pi->d11core, FUNC0(phyregdata), ~mask, val);
	pi->phy_wreg = 0;
}