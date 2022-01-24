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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct brcms_phy {int /*<<< orphan*/  radio_chanspec; } ;
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NPHY_RSSI_SEL_TSSI_2G ; 
 scalar_t__ NPHY_RSSI_SEL_TSSI_5G ; 
 int /*<<< orphan*/  NPHY_TBL_ID_CORE1TXPWRCTL ; 
 int /*<<< orphan*/  NPHY_TBL_ID_CORE2TXPWRCTL ; 
 int FUNC1 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,scalar_t__,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*) ; 

void
FUNC4(struct brcms_phy *pi, s32 *qdBm_pwrbuf, u8 num_samps)
{
	u16 tssi_reg;
	s32 temp, pwrindex[2];
	s32 idle_tssi[2];
	s32 rssi_buf[4];
	s32 tssival[2];
	u8 tssi_type;

	tssi_reg = FUNC1(pi, 0x1e9);

	temp = (s32) (tssi_reg & 0x3f);
	idle_tssi[0] = (temp <= 31) ? temp : (temp - 64);

	temp = (s32) ((tssi_reg >> 8) & 0x3f);
	idle_tssi[1] = (temp <= 31) ? temp : (temp - 64);

	tssi_type =
		FUNC0(pi->radio_chanspec) ?
		(u8)NPHY_RSSI_SEL_TSSI_5G : (u8)NPHY_RSSI_SEL_TSSI_2G;

	FUNC2(pi, tssi_type, rssi_buf, num_samps);

	tssival[0] = rssi_buf[0] / ((s32) num_samps);
	tssival[1] = rssi_buf[2] / ((s32) num_samps);

	pwrindex[0] = idle_tssi[0] - tssival[0] + 64;
	pwrindex[1] = idle_tssi[1] - tssival[1] + 64;

	if (pwrindex[0] < 0)
		pwrindex[0] = 0;
	else if (pwrindex[0] > 63)
		pwrindex[0] = 63;

	if (pwrindex[1] < 0)
		pwrindex[1] = 0;
	else if (pwrindex[1] > 63)
		pwrindex[1] = 63;

	FUNC3(pi, NPHY_TBL_ID_CORE1TXPWRCTL, 1,
				(u32) pwrindex[0], 32, &qdBm_pwrbuf[0]);
	FUNC3(pi, NPHY_TBL_ID_CORE2TXPWRCTL, 1,
				(u32) pwrindex[1], 32, &qdBm_pwrbuf[1]);
}