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
 unsigned int BMCR_RESET ; 
 int /*<<< orphan*/  MII_BMCR ; 
 unsigned int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct rtl8169_private *tp)
{
	unsigned int val;

	val = FUNC0(tp, MII_BMCR) | BMCR_RESET;
	FUNC1(tp, MII_BMCR, val & 0xffff);
}