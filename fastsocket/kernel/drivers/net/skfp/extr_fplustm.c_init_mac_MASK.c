#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  int u_long ;
struct TYPE_5__ {int mdr2init; int rx_mode; int mdr3init; int frselreg_init; } ;
struct TYPE_8__ {int /*<<< orphan*/  hw_state; int /*<<< orphan*/  hw_is_64bit; TYPE_1__ fp; } ;
struct TYPE_7__ {TYPE_2__* m; } ;
struct s_smc {TYPE_4__ hw; TYPE_3__ mib; } ;
struct TYPE_6__ {int fddiMACT_Max; int fddiMACTvxValue; int /*<<< orphan*/  fddiMACT_Req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B0_CTRL ; 
 int /*<<< orphan*/  B0_R1_CSR ; 
 int /*<<< orphan*/  B0_XA_CSR ; 
 int /*<<< orphan*/  B0_XS_CSR ; 
 int /*<<< orphan*/  B4_R1_F ; 
 int /*<<< orphan*/  B5_XA_F ; 
 int /*<<< orphan*/  B5_XS_F ; 
 int /*<<< orphan*/  CSR_CLR_RESET ; 
 int /*<<< orphan*/  CSR_SET_RESET ; 
 int /*<<< orphan*/  CTRL_HPI_CLR ; 
 int /*<<< orphan*/  CTRL_HPI_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_CMDREG1 ; 
 int /*<<< orphan*/  FM_FRMTHR ; 
 int /*<<< orphan*/  FM_FRSELREG ; 
 int FM_ICLLA0 ; 
 int FM_ICLLR ; 
 int FM_ICLLS ; 
 int /*<<< orphan*/  FM_MDREG1 ; 
 int /*<<< orphan*/  FM_MDREG2 ; 
 int /*<<< orphan*/  FM_MDREG3 ; 
 int FM_MINIT ; 
 int FM_MMEMACT ; 
 int FM_SELRA ; 
 int /*<<< orphan*/  FM_TMAX ; 
 int /*<<< orphan*/  FM_TVX ; 
 int /*<<< orphan*/  FM_UNLCKDLY ; 
 size_t MAC0 ; 
 int MB ; 
 int MDR1INIT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  RX_WATERMARK ; 
 int /*<<< orphan*/  STARTED ; 
 int /*<<< orphan*/  STOPPED ; 
 int /*<<< orphan*/  TX_WATERMARK ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct s_smc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC6 (struct s_smc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC8 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC9 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC10 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC11 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC16 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC17 (struct s_smc*) ; 

__attribute__((used)) static int FUNC18(struct s_smc *smc, int all)
{
	u_short	t_max,x ;
	u_long	time=0 ;

	/*
	 * clear memory
	 */
	FUNC14(FUNC1(FM_MDREG1),FM_MINIT) ;	/* FORMAC+ init mode */
	FUNC16(smc) ;
	FUNC14(FUNC1(FM_MDREG1),FM_MMEMACT) ;	/* FORMAC+ memory activ mode */
	/* Note: Mode register 2 is set here, incase parity is enabled. */
	FUNC14(FUNC1(FM_MDREG2),smc->hw.fp.mdr2init) ;

	if (all) {
		FUNC7(smc) ;
	}
	else {
		/*
		 * reset the HPI, the Master and the BMUs
		 */
		FUNC12(FUNC0(B0_CTRL), CTRL_HPI_SET) ;
		time = FUNC5(smc) ;
	}

	/*
	 * set all pointers, frames etc
	 */
	FUNC17(smc) ;

	FUNC10(smc) ;
	FUNC9(smc) ;
	FUNC8(smc) ;

	FUNC4(smc,smc->mib.m[MAC0].fddiMACT_Req) ;

	/* set RX threshold */
	/* see Errata #SN2 Phantom receive overflow */
	FUNC14(FUNC1(FM_FRMTHR),14<<12) ;		/* switch on */

	/* set formac work mode */
	FUNC14(FUNC1(FM_MDREG1),MDR1INIT | FM_SELRA | smc->hw.fp.rx_mode) ;
	FUNC14(FUNC1(FM_MDREG2),smc->hw.fp.mdr2init) ;
	FUNC14(FUNC1(FM_MDREG3),smc->hw.fp.mdr3init) ;
	FUNC14(FUNC1(FM_FRSELREG),smc->hw.fp.frselreg_init) ;

	/* set timer */
	/*
	 * errata #22 fplus:
	 * T_MAX must not be FFFE
	 * or one of FFDF, FFB8, FF91 (-0x27 etc..)
	 */
	t_max = (u_short)(smc->mib.m[MAC0].fddiMACT_Max/32) ;
	x = t_max/0x27 ;
	x *= 0x27 ;
	if ((t_max == 0xfffe) || (t_max - x == 0x16))
		t_max-- ;
	FUNC14(FUNC1(FM_TMAX),(u_short)t_max) ;

	/* BugFix for report #10204 */
	if (smc->mib.m[MAC0].fddiMACTvxValue < (u_long) (- FUNC3(52))) {
		FUNC14(FUNC1(FM_TVX), (u_short) (- FUNC3(52))/255 & MB) ;
	} else {
		FUNC14(FUNC1(FM_TVX),
			(u_short)((smc->mib.m[MAC0].fddiMACTvxValue/255) & MB)) ;
	}

	FUNC14(FUNC1(FM_CMDREG1),FM_ICLLS) ;	/* clear s-frame lock */
	FUNC14(FUNC1(FM_CMDREG1),FM_ICLLA0) ;	/* clear a-frame lock */
	FUNC14(FUNC1(FM_CMDREG1),FM_ICLLR);	/* clear receive lock */

	/* Auto unlock receice threshold for receive queue 1 and 2 */
	FUNC14(FUNC1(FM_UNLCKDLY),(0xff|(0xff<<8))) ;

	FUNC15(smc) ;				/* RT-Monitor */

	if (!all) {
		/*
		 * after 10ms, reset the BMUs and repair the rings
		 */
		FUNC6(smc,time,FUNC2(10)) ;
		FUNC13(FUNC0(B0_R1_CSR),CSR_SET_RESET) ;
		FUNC13(FUNC0(B0_XA_CSR),CSR_SET_RESET) ;
		FUNC13(FUNC0(B0_XS_CSR),CSR_SET_RESET) ;
		FUNC12(FUNC0(B0_CTRL), CTRL_HPI_CLR) ;
		FUNC13(FUNC0(B0_R1_CSR),CSR_CLR_RESET) ;
		FUNC13(FUNC0(B0_XA_CSR),CSR_CLR_RESET) ;
		FUNC13(FUNC0(B0_XS_CSR),CSR_CLR_RESET) ;
		if (!smc->hw.hw_is_64bit) {
			FUNC13(FUNC0(B4_R1_F), RX_WATERMARK) ;
			FUNC13(FUNC0(B5_XA_F), TX_WATERMARK) ;
			FUNC13(FUNC0(B5_XS_F), TX_WATERMARK) ;
		}
		smc->hw.hw_state = STOPPED ;
		FUNC11(smc) ;
	}
	smc->hw.hw_state = STARTED ;

	return(0) ;
}