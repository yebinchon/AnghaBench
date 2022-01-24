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
typedef  int u32 ;
typedef  int u16 ;
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int,int const) ; 
 int FUNC2 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*,int,int,int) ; 

__attribute__((used)) static void FUNC6(struct rtl8169_private *tp)
{
	static const u16 mac_ocp_patch[] = {
		0xe008, 0xe01b, 0xe01d, 0xe01f,
		0xe021, 0xe023, 0xe025, 0xe027,
		0x49d2, 0xf10d, 0x766c, 0x49e2,
		0xf00a, 0x1ec0, 0x8ee1, 0xc60a,

		0x77c0, 0x4870, 0x9fc0, 0x1ea0,
		0xc707, 0x8ee1, 0x9d6c, 0xc603,
		0xbe00, 0xb416, 0x0076, 0xe86c,
		0xc602, 0xbe00, 0x0000, 0xc602,

		0xbe00, 0x0000, 0xc602, 0xbe00,
		0x0000, 0xc602, 0xbe00, 0x0000,
		0xc602, 0xbe00, 0x0000, 0xc602,
		0xbe00, 0x0000, 0xc602, 0xbe00,

		0x0000, 0x0000, 0x0000, 0x0000
	};
	u32 i;

	/* Patch code for GPHY reset */
	for (i = 0; i < FUNC0(mac_ocp_patch); i++)
		FUNC1(tp, 0xf800 + 2*i, mac_ocp_patch[i]);
	FUNC1(tp, 0xfc26, 0x8000);
	FUNC1(tp, 0xfc28, 0x0075);

	FUNC4(tp);

	if (FUNC2(tp, 0xa460) & 0x0100)
		FUNC5(tp, 0xbcc4, 0x0000, 0x8000);
	else
		FUNC5(tp, 0xbcc4, 0x8000, 0x0000);

	if (FUNC2(tp, 0xa466) & 0x0100)
		FUNC5(tp, 0xc41a, 0x0002, 0x0000);
	else
		FUNC5(tp, 0xbcc4, 0x0000, 0x0002);

	FUNC5(tp, 0xa442, 0x000c, 0x0000);
	FUNC5(tp, 0xa4b2, 0x0004, 0x0000);

	FUNC3(tp, 0xa436, 0x8012);
	FUNC5(tp, 0xa438, 0x8000, 0x0000);

	FUNC5(tp, 0xc422, 0x4000, 0x2000);
}