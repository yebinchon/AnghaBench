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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int /*<<< orphan*/  radio_chanspec; TYPE_1__ pubpi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC5(struct brcms_phy *pi)
{
	u8 tx_lpf_bw = 0;

	if (FUNC1(pi->pubpi.phy_rev, 3) && FUNC2(pi->pubpi.phy_rev, 7)) {
		if (FUNC0(pi->radio_chanspec))
			tx_lpf_bw = 3;
		else
			tx_lpf_bw = 1;

		if (FUNC3(pi)) {
			if (FUNC0(pi->radio_chanspec))
				tx_lpf_bw = 5;
			else
				tx_lpf_bw = 4;
		}

		FUNC4(pi, 0xe8,
			      (tx_lpf_bw << 0) |
			      (tx_lpf_bw << 3) |
			      (tx_lpf_bw << 6) | (tx_lpf_bw << 9));

		if (FUNC3(pi)) {

			if (FUNC0(pi->radio_chanspec))
				tx_lpf_bw = 4;
			else
				tx_lpf_bw = 1;

			FUNC4(pi, 0xe9,
				      (tx_lpf_bw << 0) |
				      (tx_lpf_bw << 3) |
				      (tx_lpf_bw << 6) | (tx_lpf_bw << 9));
		}
	}
}