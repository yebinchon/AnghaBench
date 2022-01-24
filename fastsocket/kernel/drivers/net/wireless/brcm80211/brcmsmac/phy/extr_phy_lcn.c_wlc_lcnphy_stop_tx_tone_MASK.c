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
struct brcms_phy_lcnphy {scalar_t__ lcnphy_spurmod; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {scalar_t__ phy_tx_tone_freq; TYPE_1__ u; } ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  RADIO_2064_REG112 ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int,int) ; 
 int FUNC2 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int,int) ; 

void FUNC7(struct brcms_phy *pi)
{
	s16 playback_status;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	pi->phy_tx_tone_freq = 0;
	if (pi_lcn->lcnphy_spurmod) {
		FUNC6(pi, 0x942, 0x7);
		FUNC6(pi, 0x93b, 0x2017);
		FUNC6(pi, 0x93c, 0x27c5);
		FUNC5(pi, true);
	}

	playback_status = FUNC2(pi, 0x644);
	if (playback_status & (0x1 << 0)) {
		FUNC4(pi, 0);
		FUNC1(pi, 0x63f, (0x1 << 1), 1 << 1);
	} else if (playback_status & (0x1 << 1))
		FUNC1(pi, 0x453, (0x1 << 15), 0 << 15);

	FUNC1(pi, 0x6d6, (0x3 << 0), 1 << 0);

	FUNC1(pi, 0x6da, (0x1 << 3), 0 << 3);

	FUNC1(pi, 0x6da, (0x1 << 7), 0 << 7);

	FUNC0(pi, RADIO_2064_REG112, 0xFFF9);

	FUNC3(pi, false);
}