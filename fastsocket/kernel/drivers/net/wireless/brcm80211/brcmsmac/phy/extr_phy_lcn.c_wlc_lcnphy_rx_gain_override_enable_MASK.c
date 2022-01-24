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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int /*<<< orphan*/  radio_chanspec; TYPE_1__ pubpi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int,int) ; 

__attribute__((used)) static void
FUNC3(struct brcms_phy *pi, bool enable)
{
	u16 ebit = enable ? 1 : 0;

	FUNC2(pi, 0x4b0, (0x1 << 8), ebit << 8);

	FUNC2(pi, 0x44c, (0x1 << 0), ebit << 0);

	if (FUNC1(pi->pubpi.phy_rev, 2)) {
		FUNC2(pi, 0x44c, (0x1 << 4), ebit << 4);
		FUNC2(pi, 0x44c, (0x1 << 6), ebit << 6);
		FUNC2(pi, 0x4b0, (0x1 << 5), ebit << 5);
		FUNC2(pi, 0x4b0, (0x1 << 6), ebit << 6);
	} else {
		FUNC2(pi, 0x4b0, (0x1 << 12), ebit << 12);
		FUNC2(pi, 0x4b0, (0x1 << 13), ebit << 13);
		FUNC2(pi, 0x4b0, (0x1 << 5), ebit << 5);
	}

	if (FUNC0(pi->radio_chanspec)) {
		FUNC2(pi, 0x4b0, (0x1 << 10), ebit << 10);
		FUNC2(pi, 0x4e5, (0x1 << 3), ebit << 3);
	}
}