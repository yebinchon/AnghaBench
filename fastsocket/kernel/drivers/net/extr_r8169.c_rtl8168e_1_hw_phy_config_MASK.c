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
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,struct phy_reg const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rtl8169_private *tp)
{
	static const struct phy_reg phy_reg_init[] = {
		/* Enable Delay cap */
		{ 0x1f, 0x0005 },
		{ 0x05, 0x8b80 },
		{ 0x06, 0xc896 },
		{ 0x1f, 0x0000 },

		/* Channel estimation fine tune */
		{ 0x1f, 0x0001 },
		{ 0x0b, 0x6c20 },
		{ 0x07, 0x2872 },
		{ 0x1c, 0xefff },
		{ 0x1f, 0x0003 },
		{ 0x14, 0x6420 },
		{ 0x1f, 0x0000 },

		/* Update PFM & 10M TX idle timer */
		{ 0x1f, 0x0007 },
		{ 0x1e, 0x002f },
		{ 0x15, 0x1919 },
		{ 0x1f, 0x0000 },

		{ 0x1f, 0x0007 },
		{ 0x1e, 0x00ac },
		{ 0x18, 0x0006 },
		{ 0x1f, 0x0000 }
	};

	FUNC1(tp);

	FUNC4(tp, phy_reg_init, FUNC0(phy_reg_init));

	/* DCO enable for 10M IDLE Power */
	FUNC3(tp, 0x1f, 0x0007);
	FUNC3(tp, 0x1e, 0x0023);
	FUNC2(tp, 0x17, 0x0006, 0x0000);
	FUNC3(tp, 0x1f, 0x0000);

	/* For impedance matching */
	FUNC3(tp, 0x1f, 0x0002);
	FUNC2(tp, 0x08, 0x8000, 0x7f00);
	FUNC3(tp, 0x1f, 0x0000);

	/* PHY auto speed down */
	FUNC3(tp, 0x1f, 0x0007);
	FUNC3(tp, 0x1e, 0x002d);
	FUNC2(tp, 0x18, 0x0050, 0x0000);
	FUNC3(tp, 0x1f, 0x0000);
	FUNC2(tp, 0x14, 0x8000, 0x0000);

	FUNC3(tp, 0x1f, 0x0005);
	FUNC3(tp, 0x05, 0x8b86);
	FUNC2(tp, 0x06, 0x0001, 0x0000);
	FUNC3(tp, 0x1f, 0x0000);

	FUNC3(tp, 0x1f, 0x0005);
	FUNC3(tp, 0x05, 0x8b85);
	FUNC2(tp, 0x06, 0x0000, 0x2000);
	FUNC3(tp, 0x1f, 0x0007);
	FUNC3(tp, 0x1e, 0x0020);
	FUNC2(tp, 0x15, 0x0000, 0x1100);
	FUNC3(tp, 0x1f, 0x0006);
	FUNC3(tp, 0x00, 0x5a00);
	FUNC3(tp, 0x1f, 0x0000);
	FUNC3(tp, 0x0d, 0x0007);
	FUNC3(tp, 0x0e, 0x003c);
	FUNC3(tp, 0x0d, 0x4007);
	FUNC3(tp, 0x0e, 0x0000);
	FUNC3(tp, 0x0d, 0x0000);
}