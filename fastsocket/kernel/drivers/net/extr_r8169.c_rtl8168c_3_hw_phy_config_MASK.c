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
struct rtl8169_private {int dummy; } ;
struct phy_reg {int member_0; int member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct phy_reg const*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,struct phy_reg const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rtl8169_private *tp)
{
	static const struct phy_reg phy_reg_init[] = {
		{ 0x1f, 0x0001 },
		{ 0x12, 0x2300 },
		{ 0x1d, 0x3d98 },
		{ 0x1f, 0x0002 },
		{ 0x0c, 0x7eb8 },
		{ 0x06, 0x5461 },
		{ 0x1f, 0x0003 },
		{ 0x16, 0x0f0a },
		{ 0x1f, 0x0000 }
	};

	FUNC3(tp, phy_reg_init, FUNC0(phy_reg_init));

	FUNC1(tp, 0x16, 1 << 0);
	FUNC1(tp, 0x14, 1 << 5);
	FUNC1(tp, 0x0d, 1 << 5);
	FUNC2(tp, 0x1f, 0x0000);
}