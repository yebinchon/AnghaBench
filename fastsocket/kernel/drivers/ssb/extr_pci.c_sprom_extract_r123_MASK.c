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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {void* a1; void* a0; } ;
struct ssb_sprom {int revision; TYPE_1__ antenna_gain; scalar_t__ et1mac; scalar_t__ et0mac; scalar_t__ il0mac; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSB_SPROM1_AGAIN_A ; 
 int /*<<< orphan*/  SSB_SPROM1_AGAIN_A_SHIFT ; 
 int /*<<< orphan*/  SSB_SPROM1_AGAIN_BG ; 
 int /*<<< orphan*/  SSB_SPROM1_AGAIN_BG_SHIFT ; 
 int /*<<< orphan*/  SSB_SPROM1_BFLLO ; 
 int /*<<< orphan*/  SSB_SPROM1_BINF ; 
 int SSB_SPROM1_BINF_ANTA ; 
 int SSB_SPROM1_BINF_ANTA_SHIFT ; 
 int SSB_SPROM1_BINF_ANTBG ; 
 int SSB_SPROM1_BINF_ANTBG_SHIFT ; 
 int SSB_SPROM1_BINF_BREV ; 
 int SSB_SPROM1_BINF_CCODE ; 
 int SSB_SPROM1_BINF_CCODE_SHIFT ; 
 int /*<<< orphan*/  SSB_SPROM1_CCODE ; 
 int /*<<< orphan*/  SSB_SPROM1_ET0MAC ; 
 int /*<<< orphan*/  SSB_SPROM1_ET1MAC ; 
 int /*<<< orphan*/  SSB_SPROM1_ETHPHY ; 
 int SSB_SPROM1_ETHPHY_ET0A ; 
 int SSB_SPROM1_ETHPHY_ET0M ; 
 int SSB_SPROM1_ETHPHY_ET1A ; 
 int SSB_SPROM1_ETHPHY_ET1A_SHIFT ; 
 int SSB_SPROM1_ETHPHY_ET1M ; 
 int /*<<< orphan*/  SSB_SPROM1_GPIOA ; 
 int SSB_SPROM1_GPIOA_P0 ; 
 int SSB_SPROM1_GPIOA_P1 ; 
 int SSB_SPROM1_GPIOA_P1_SHIFT ; 
 int /*<<< orphan*/  SSB_SPROM1_GPIOB ; 
 int SSB_SPROM1_GPIOB_P2 ; 
 int SSB_SPROM1_GPIOB_P3 ; 
 int SSB_SPROM1_GPIOB_P3_SHIFT ; 
 int /*<<< orphan*/  SSB_SPROM1_IL0MAC ; 
 int /*<<< orphan*/  SSB_SPROM1_ITSSI ; 
 int SSB_SPROM1_ITSSI_A ; 
 int SSB_SPROM1_ITSSI_A_SHIFT ; 
 int SSB_SPROM1_ITSSI_BG ; 
 int /*<<< orphan*/  SSB_SPROM1_MAXPWR ; 
 int SSB_SPROM1_MAXPWR_A ; 
 int SSB_SPROM1_MAXPWR_A_SHIFT ; 
 int SSB_SPROM1_MAXPWR_BG ; 
 int /*<<< orphan*/  SSB_SPROM1_PA0B0 ; 
 int /*<<< orphan*/  SSB_SPROM1_PA0B1 ; 
 int /*<<< orphan*/  SSB_SPROM1_PA0B2 ; 
 int /*<<< orphan*/  SSB_SPROM1_PA1B0 ; 
 int /*<<< orphan*/  SSB_SPROM1_PA1B1 ; 
 int /*<<< orphan*/  SSB_SPROM1_PA1B2 ; 
 int /*<<< orphan*/  SSB_SPROM2_BFLHI ; 
 int /*<<< orphan*/  SSB_SPROM3_IL0MAC ; 
 int /*<<< orphan*/ * alpha2 ; 
 int /*<<< orphan*/  ant_available_a ; 
 int /*<<< orphan*/  ant_available_bg ; 
 int /*<<< orphan*/  board_rev ; 
 int /*<<< orphan*/  boardflags_hi ; 
 int /*<<< orphan*/  boardflags_lo ; 
 int /*<<< orphan*/  country_code ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  et0mdcport ; 
 int /*<<< orphan*/  et0phyaddr ; 
 int /*<<< orphan*/  et1mdcport ; 
 int /*<<< orphan*/  et1phyaddr ; 
 int /*<<< orphan*/  gpio0 ; 
 int /*<<< orphan*/  gpio1 ; 
 int /*<<< orphan*/  gpio2 ; 
 int /*<<< orphan*/  gpio3 ; 
 int /*<<< orphan*/  itssi_a ; 
 int /*<<< orphan*/  itssi_bg ; 
 int /*<<< orphan*/  maxpwr_a ; 
 int /*<<< orphan*/  maxpwr_bg ; 
 int /*<<< orphan*/  pa0b0 ; 
 int /*<<< orphan*/  pa0b1 ; 
 int /*<<< orphan*/  pa0b2 ; 
 int /*<<< orphan*/  pa1b0 ; 
 int /*<<< orphan*/  pa1b1 ; 
 int /*<<< orphan*/  pa1b2 ; 
 void* FUNC3 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ssb_sprom *out, const u16 *in)
{
	int i;
	u16 v;
	u16 loc[3];

	if (out->revision == 3)			/* rev 3 moved MAC */
		loc[0] = SSB_SPROM3_IL0MAC;
	else {
		loc[0] = SSB_SPROM1_IL0MAC;
		loc[1] = SSB_SPROM1_ET0MAC;
		loc[2] = SSB_SPROM1_ET1MAC;
	}
	for (i = 0; i < 3; i++) {
		v = in[FUNC1(loc[0]) + i];
		*(((__be16 *)out->il0mac) + i) = FUNC2(v);
	}
	if (out->revision < 3) { 	/* only rev 1-2 have et0, et1 */
		for (i = 0; i < 3; i++) {
			v = in[FUNC1(loc[1]) + i];
			*(((__be16 *)out->et0mac) + i) = FUNC2(v);
		}
		for (i = 0; i < 3; i++) {
			v = in[FUNC1(loc[2]) + i];
			*(((__be16 *)out->et1mac) + i) = FUNC2(v);
		}
	}
	FUNC0(et0phyaddr, SSB_SPROM1_ETHPHY, SSB_SPROM1_ETHPHY_ET0A, 0);
	FUNC0(et1phyaddr, SSB_SPROM1_ETHPHY, SSB_SPROM1_ETHPHY_ET1A,
	     SSB_SPROM1_ETHPHY_ET1A_SHIFT);
	FUNC0(et0mdcport, SSB_SPROM1_ETHPHY, SSB_SPROM1_ETHPHY_ET0M, 14);
	FUNC0(et1mdcport, SSB_SPROM1_ETHPHY, SSB_SPROM1_ETHPHY_ET1M, 15);
	FUNC0(board_rev, SSB_SPROM1_BINF, SSB_SPROM1_BINF_BREV, 0);
	if (out->revision == 1)
		FUNC0(country_code, SSB_SPROM1_BINF, SSB_SPROM1_BINF_CCODE,
		     SSB_SPROM1_BINF_CCODE_SHIFT);
	FUNC0(ant_available_a, SSB_SPROM1_BINF, SSB_SPROM1_BINF_ANTA,
	     SSB_SPROM1_BINF_ANTA_SHIFT);
	FUNC0(ant_available_bg, SSB_SPROM1_BINF, SSB_SPROM1_BINF_ANTBG,
	     SSB_SPROM1_BINF_ANTBG_SHIFT);
	FUNC0(pa0b0, SSB_SPROM1_PA0B0, 0xFFFF, 0);
	FUNC0(pa0b1, SSB_SPROM1_PA0B1, 0xFFFF, 0);
	FUNC0(pa0b2, SSB_SPROM1_PA0B2, 0xFFFF, 0);
	FUNC0(pa1b0, SSB_SPROM1_PA1B0, 0xFFFF, 0);
	FUNC0(pa1b1, SSB_SPROM1_PA1B1, 0xFFFF, 0);
	FUNC0(pa1b2, SSB_SPROM1_PA1B2, 0xFFFF, 0);
	FUNC0(gpio0, SSB_SPROM1_GPIOA, SSB_SPROM1_GPIOA_P0, 0);
	FUNC0(gpio1, SSB_SPROM1_GPIOA, SSB_SPROM1_GPIOA_P1,
	     SSB_SPROM1_GPIOA_P1_SHIFT);
	FUNC0(gpio2, SSB_SPROM1_GPIOB, SSB_SPROM1_GPIOB_P2, 0);
	FUNC0(gpio3, SSB_SPROM1_GPIOB, SSB_SPROM1_GPIOB_P3,
	     SSB_SPROM1_GPIOB_P3_SHIFT);
	FUNC0(maxpwr_a, SSB_SPROM1_MAXPWR, SSB_SPROM1_MAXPWR_A,
	     SSB_SPROM1_MAXPWR_A_SHIFT);
	FUNC0(maxpwr_bg, SSB_SPROM1_MAXPWR, SSB_SPROM1_MAXPWR_BG, 0);
	FUNC0(itssi_a, SSB_SPROM1_ITSSI, SSB_SPROM1_ITSSI_A,
	     SSB_SPROM1_ITSSI_A_SHIFT);
	FUNC0(itssi_bg, SSB_SPROM1_ITSSI, SSB_SPROM1_ITSSI_BG, 0);
	FUNC0(boardflags_lo, SSB_SPROM1_BFLLO, 0xFFFF, 0);
	if (out->revision >= 2)
		FUNC0(boardflags_hi, SSB_SPROM2_BFLHI, 0xFFFF, 0);
	FUNC0(alpha2[0], SSB_SPROM1_CCODE, 0xff00, 8);
	FUNC0(alpha2[1], SSB_SPROM1_CCODE, 0x00ff, 0);

	/* Extract the antenna gain values. */
	out->antenna_gain.a0 = FUNC3(out->revision, in,
						    SSB_SPROM1_AGAIN_BG,
						    SSB_SPROM1_AGAIN_BG_SHIFT);
	out->antenna_gain.a1 = FUNC3(out->revision, in,
						    SSB_SPROM1_AGAIN_A,
						    SSB_SPROM1_AGAIN_A_SHIFT);
}