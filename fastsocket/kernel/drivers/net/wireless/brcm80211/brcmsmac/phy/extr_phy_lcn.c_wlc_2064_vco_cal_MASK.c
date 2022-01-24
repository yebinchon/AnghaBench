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
typedef  int u8 ;
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADIO_2064_REG056 ; 
 int /*<<< orphan*/  RADIO_2064_REG057 ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct brcms_phy *pi)
{
	u8 calnrst;

	FUNC0(pi, RADIO_2064_REG057, 1 << 3, 1 << 3);
	calnrst = (u8) FUNC1(pi, RADIO_2064_REG056) & 0xf8;
	FUNC3(pi, RADIO_2064_REG056, calnrst);
	FUNC2(1);
	FUNC3(pi, RADIO_2064_REG056, calnrst | 0x03);
	FUNC2(1);
	FUNC3(pi, RADIO_2064_REG056, calnrst | 0x07);
	FUNC2(300);
	FUNC0(pi, RADIO_2064_REG057, 1 << 3, 0);
}