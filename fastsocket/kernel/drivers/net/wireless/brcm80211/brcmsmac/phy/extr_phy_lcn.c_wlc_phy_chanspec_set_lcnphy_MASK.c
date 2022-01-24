#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; int /*<<< orphan*/  radio_chanspec; } ;
struct TYPE_4__ {int ptcentreTs20; int ptcentreFactor; } ;
struct TYPE_3__ {int boardflags; } ;

/* Variables and functions */
 int BFL_FEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* lcnphy_sfo_cfg ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy_pub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int,int) ; 

void FUNC10(struct brcms_phy *pi, u16 chanspec)
{
	u8 channel = FUNC0(chanspec);

	FUNC8((struct brcms_phy_pub *)pi, chanspec);

	FUNC6(pi, pi->radio_chanspec);

	FUNC2(pi, 0x44a, 0x44);
	FUNC9(pi, 0x44a, 0x80);

	FUNC5(pi, channel);
	FUNC3(1000);

	FUNC7(pi);

	FUNC9(pi, 0x657, lcnphy_sfo_cfg[channel - 1].ptcentreTs20);
	FUNC9(pi, 0x658, lcnphy_sfo_cfg[channel - 1].ptcentreFactor);

	if (FUNC0(pi->radio_chanspec) == 14) {
		FUNC1(pi, 0x448, (0x3 << 8), (2) << 8);

		FUNC4(pi, false, 3);
	} else {
		FUNC1(pi, 0x448, (0x3 << 8), (1) << 8);

		FUNC4(pi, false, 2);
	}

	if (pi->sh->boardflags & BFL_FEM)
		FUNC4(pi, true, 0);
	else
		FUNC4(pi, true, 3);

	FUNC1(pi, 0x4eb, (0x7 << 3), (1) << 3);
}