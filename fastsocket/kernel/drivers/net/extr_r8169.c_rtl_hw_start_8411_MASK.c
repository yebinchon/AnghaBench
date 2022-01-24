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
struct ephy_info {int member_0; int member_1; int member_2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ephy_info const*) ; 
 int /*<<< orphan*/  ERIAR_EXGMAC ; 
 int /*<<< orphan*/  ERIAR_MASK_0011 ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,struct ephy_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rtl8169_private *tp)
{
	static const struct ephy_info e_info_8168f_1[] = {
		{ 0x06, 0x00c0,	0x0020 },
		{ 0x0f, 0xffff,	0x5200 },
		{ 0x1e, 0x0000,	0x4000 },
		{ 0x19, 0x0000,	0x0224 }
	};

	FUNC2(tp);

	FUNC1(tp, e_info_8168f_1, FUNC0(e_info_8168f_1));

	FUNC3(tp, 0x0d4, ERIAR_MASK_0011, 0x0c00, 0x0000, ERIAR_EXGMAC);
}