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
struct ks_net {int rc_rxqcr; scalar_t__ all_mcast; scalar_t__ promiscuous; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_P1MBCR ; 
 int /*<<< orphan*/  KS_RXCR1 ; 
 int /*<<< orphan*/  KS_RXFCTR ; 
 int /*<<< orphan*/  KS_RXFDPR ; 
 int /*<<< orphan*/  KS_RXQCR ; 
 int /*<<< orphan*/  KS_TXCR ; 
 int /*<<< orphan*/  KS_TXFDPR ; 
 int P1MBCR_FORCE_FDX ; 
 int RXCR1_RXAE ; 
 int RXCR1_RXBE ; 
 int RXCR1_RXFCE ; 
 int RXCR1_RXINVF ; 
 int RXCR1_RXIPFCC ; 
 int RXCR1_RXMAFMA ; 
 int RXCR1_RXME ; 
 int RXCR1_RXPAFMA ; 
 int RXCR1_RXUE ; 
 int RXFCTR_THRESHOLD_MASK ; 
 int RXFDPR_RXFPAI ; 
 int RXQCR_CMD_CNTL ; 
 int TXCR_TCGIP ; 
 int TXCR_TXCRC ; 
 int TXCR_TXFCE ; 
 int TXCR_TXPE ; 
 int TXFDPR_TXFPAI ; 
 int FUNC0 (struct ks_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ks_net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ks_net *ks)
{
	u16	w;

	/**
	 * Configure QMU Transmit
	 */

	/* Setup Transmit Frame Data Pointer Auto-Increment (TXFDPR) */
	FUNC1(ks, KS_TXFDPR, TXFDPR_TXFPAI);

	/* Setup Receive Frame Data Pointer Auto-Increment */
	FUNC1(ks, KS_RXFDPR, RXFDPR_RXFPAI);

	/* Setup Receive Frame Threshold - 1 frame (RXFCTFC) */
	FUNC1(ks, KS_RXFCTR, 1 & RXFCTR_THRESHOLD_MASK);

	/* Setup RxQ Command Control (RXQCR) */
	ks->rc_rxqcr = RXQCR_CMD_CNTL;
	FUNC1(ks, KS_RXQCR, ks->rc_rxqcr);

	/**
	 * set the force mode to half duplex, default is full duplex
	 *  because if the auto-negotiation fails, most switch uses
	 *  half-duplex.
	 */

	w = FUNC0(ks, KS_P1MBCR);
	w &= ~P1MBCR_FORCE_FDX;
	FUNC1(ks, KS_P1MBCR, w);

	w = TXCR_TXFCE | TXCR_TXPE | TXCR_TXCRC | TXCR_TCGIP;
	FUNC1(ks, KS_TXCR, w);

	w = RXCR1_RXFCE | RXCR1_RXBE | RXCR1_RXUE | RXCR1_RXME | RXCR1_RXIPFCC;

	if (ks->promiscuous)         /* bPromiscuous */
		w |= (RXCR1_RXAE | RXCR1_RXINVF);
	else if (ks->all_mcast) /* Multicast address passed mode */
		w |= (RXCR1_RXAE | RXCR1_RXMAFMA | RXCR1_RXPAFMA);
	else                                   /* Normal mode */
		w |= RXCR1_RXPAFMA;

	FUNC1(ks, KS_RXCR1, w);
}