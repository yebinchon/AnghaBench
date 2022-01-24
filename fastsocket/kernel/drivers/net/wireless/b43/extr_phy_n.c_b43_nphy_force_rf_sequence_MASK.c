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
typedef  int u16 ;
struct b43_wldev {int /*<<< orphan*/  wl; } ;
typedef  enum b43_nphy_rf_sequence { ____Placeholder_b43_nphy_rf_sequence } b43_nphy_rf_sequence ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  B43_NPHY_RFSEQMODE ; 
 int const B43_NPHY_RFSEQMODE_CAOVER ; 
 int const B43_NPHY_RFSEQMODE_TROVER ; 
 int /*<<< orphan*/  B43_NPHY_RFSEQST ; 
 int /*<<< orphan*/  B43_NPHY_RFSEQTR ; 
#define  B43_NPHY_RFSEQTR_RST2RX 139 
#define  B43_NPHY_RFSEQTR_RX2TX 138 
#define  B43_NPHY_RFSEQTR_TX2RX 137 
#define  B43_NPHY_RFSEQTR_UPGH 136 
#define  B43_NPHY_RFSEQTR_UPGL 135 
#define  B43_NPHY_RFSEQTR_UPGU 134 
#define  B43_RFSEQ_RESET2RX 133 
#define  B43_RFSEQ_RX2TX 132 
#define  B43_RFSEQ_TX2RX 131 
#define  B43_RFSEQ_UPDATE_GAINH 130 
#define  B43_RFSEQ_UPDATE_GAINL 129 
#define  B43_RFSEQ_UPDATE_GAINU 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int const FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev,
				       enum b43_nphy_rf_sequence seq)
{
	static const u16 trigger[] = {
		[B43_RFSEQ_RX2TX]		= B43_NPHY_RFSEQTR_RX2TX,
		[B43_RFSEQ_TX2RX]		= B43_NPHY_RFSEQTR_TX2RX,
		[B43_RFSEQ_RESET2RX]		= B43_NPHY_RFSEQTR_RST2RX,
		[B43_RFSEQ_UPDATE_GAINH]	= B43_NPHY_RFSEQTR_UPGH,
		[B43_RFSEQ_UPDATE_GAINL]	= B43_NPHY_RFSEQTR_UPGL,
		[B43_RFSEQ_UPDATE_GAINU]	= B43_NPHY_RFSEQTR_UPGU,
	};
	int i;
	u16 seq_mode = FUNC2(dev, B43_NPHY_RFSEQMODE);

	FUNC1(seq >= FUNC0(trigger));

	FUNC3(dev, B43_NPHY_RFSEQMODE,
		    B43_NPHY_RFSEQMODE_CAOVER | B43_NPHY_RFSEQMODE_TROVER);
	FUNC3(dev, B43_NPHY_RFSEQTR, trigger[seq]);
	for (i = 0; i < 200; i++) {
		if (!(FUNC2(dev, B43_NPHY_RFSEQST) & trigger[seq]))
			goto ok;
		FUNC6(1);
	}
	FUNC5(dev->wl, "RF sequence status timeout\n");
ok:
	FUNC4(dev, B43_NPHY_RFSEQMODE, seq_mode);
}