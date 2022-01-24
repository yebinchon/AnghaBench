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

/* Variables and functions */
 int /*<<< orphan*/  ERIAR_EXGMAC ; 
 int /*<<< orphan*/  ERIAR_MASK_0011 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int,int) ; 

__attribute__((used)) static void FUNC4(struct rtl8169_private *tp)
{
	/* Disable ALDPS before setting firmware */
	FUNC3(tp, 0x1f, 0x0000);
	FUNC3(tp, 0x18, 0x0310);
	FUNC0(20);

	FUNC1(tp);

	/* EEE setting */
	FUNC2(tp, 0x1b0, ERIAR_MASK_0011, 0x0000, ERIAR_EXGMAC);
	FUNC3(tp, 0x1f, 0x0004);
	FUNC3(tp, 0x10, 0x401f);
	FUNC3(tp, 0x19, 0x7030);
	FUNC3(tp, 0x1f, 0x0000);
}