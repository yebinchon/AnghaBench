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
 int /*<<< orphan*/  RADIO_2064_REG004 ; 
 int /*<<< orphan*/  RADIO_2064_REG057 ; 
 int /*<<< orphan*/  RADIO_2064_REG05B ; 
 int /*<<< orphan*/  RADIO_2064_REG05C ; 
 int /*<<< orphan*/  RADIO_2064_REG078 ; 
 int /*<<< orphan*/  RADIO_2064_REG120 ; 
 int /*<<< orphan*/  RADIO_2064_REG129 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct brcms_phy*) ; 

__attribute__((used)) static void FUNC6(struct brcms_phy *pi)
{
	u8 rcal_value;

	FUNC1(pi, RADIO_2064_REG05B, 0xfD);

	FUNC3(pi, RADIO_2064_REG004, 0x40);
	FUNC3(pi, RADIO_2064_REG120, 0x10);

	FUNC3(pi, RADIO_2064_REG078, 0x80);
	FUNC3(pi, RADIO_2064_REG129, 0x02);

	FUNC3(pi, RADIO_2064_REG057, 0x01);

	FUNC3(pi, RADIO_2064_REG05B, 0x02);
	FUNC2(5);
	FUNC0(!FUNC5(pi), 10 * 1000 * 1000);

	if (FUNC5(pi)) {
		rcal_value = (u8) FUNC4(pi, RADIO_2064_REG05C);
		rcal_value = rcal_value & 0x1f;
	}

	FUNC1(pi, RADIO_2064_REG05B, 0xfD);

	FUNC1(pi, RADIO_2064_REG057, 0xFE);
}