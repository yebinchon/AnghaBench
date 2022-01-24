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
typedef  int /*<<< orphan*/  tt ;
struct isar_hw {int iis; int cmsb; int bstat; int /*<<< orphan*/  clsb; int /*<<< orphan*/  name; int /*<<< orphan*/  hw; int /*<<< orphan*/  (* write_reg ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  ch; int /*<<< orphan*/  err_rdo; int /*<<< orphan*/  err_tx; } ;
struct isar_ch {TYPE_1__ bch; } ;

/* Variables and functions */
 int BSTEV_RBO ; 
 int BSTEV_TBO ; 
 int DTMF_TONE_VAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ISAR_IIA ; 
#define  ISAR_IIS_BSTEV 136 
#define  ISAR_IIS_BSTRSP 135 
#define  ISAR_IIS_DIAG 134 
#define  ISAR_IIS_GSTEV 133 
#define  ISAR_IIS_INVMSG 132 
#define  ISAR_IIS_IOM2RSP 131 
 int ISAR_IIS_MSCMSD ; 
#define  ISAR_IIS_PSTEV 130 
#define  ISAR_IIS_PSTRSP 129 
#define  ISAR_IIS_RDATA 128 
 int /*<<< orphan*/  ISDN_P_B_MODEM_ASYNC ; 
 int /*<<< orphan*/  ISDN_P_B_RAW ; 
 int /*<<< orphan*/  ISDN_P_B_T30_FAX ; 
 int /*<<< orphan*/  MISDN_ID_ANY ; 
 int /*<<< orphan*/  PH_CONTROL_IND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isar_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct isar_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct isar_ch*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct isar_ch*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct isar_ch*) ; 
 int /*<<< orphan*/  FUNC6 (struct isar_ch*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC8 (struct isar_hw*,int /*<<< orphan*/ *) ; 
 struct isar_ch* FUNC9 (struct isar_hw*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC15(struct isar_hw *isar)
{
	struct isar_ch *ch;

	FUNC2(isar);
	switch (isar->iis & ISAR_IIS_MSCMSD) {
	case ISAR_IIS_RDATA:
		ch = FUNC9(isar, isar->iis >> 6);
		if (ch)
			FUNC6(ch);
		else {
			FUNC7("%s: ISAR spurious IIS_RDATA %x/%x/%x\n",
				isar->name, isar->iis, isar->cmsb,
				isar->clsb);
			isar->write_reg(isar->hw, ISAR_IIA, 0);
		}
		break;
	case ISAR_IIS_GSTEV:
		isar->write_reg(isar->hw, ISAR_IIA, 0);
		isar->bstat |= isar->cmsb;
		FUNC1(isar, isar->cmsb);
		break;
	case ISAR_IIS_BSTEV:
#ifdef ERROR_STATISTIC
		ch = sel_bch_isar(isar, isar->iis >> 6);
		if (ch) {
			if (isar->cmsb == BSTEV_TBO)
				ch->bch.err_tx++;
			if (isar->cmsb == BSTEV_RBO)
				ch->bch.err_rdo++;
		}
#endif
		FUNC7("%s: Buffer STEV dpath%d msb(%x)\n",
			isar->name, isar->iis>>6, isar->cmsb);
		isar->write_reg(isar->hw, ISAR_IIA, 0);
		break;
	case ISAR_IIS_PSTEV:
		ch = FUNC9(isar, isar->iis >> 6);
		if (ch) {
			FUNC8(isar, NULL);
			if (ch->bch.state == ISDN_P_B_MODEM_ASYNC)
				FUNC4(ch, isar->cmsb);
			else if (ch->bch.state == ISDN_P_B_T30_FAX)
				FUNC3(ch, isar->cmsb);
			else if (ch->bch.state == ISDN_P_B_RAW) {
				int	tt;
				tt = isar->cmsb | 0x30;
				if (tt == 0x3e)
					tt = '*';
				else if (tt == 0x3f)
					tt = '#';
				else if (tt > '9')
					tt += 7;
				tt |= DTMF_TONE_VAL;
				FUNC0(&ch->bch.ch, PH_CONTROL_IND,
					MISDN_ID_ANY, sizeof(tt), &tt,
					GFP_ATOMIC);
			} else
				FUNC7("%s: ISAR IIS_PSTEV pm %d sta %x\n",
					isar->name, ch->bch.state,
					isar->cmsb);
		} else {
			FUNC7("%s: ISAR spurious IIS_PSTEV %x/%x/%x\n",
				isar->name, isar->iis, isar->cmsb,
				isar->clsb);
			isar->write_reg(isar->hw, ISAR_IIA, 0);
		}
		break;
	case ISAR_IIS_PSTRSP:
		ch = FUNC9(isar, isar->iis >> 6);
		if (ch) {
			FUNC8(isar, NULL);
			FUNC5(ch);
		} else {
			FUNC7("%s: ISAR spurious IIS_PSTRSP %x/%x/%x\n",
				isar->name, isar->iis, isar->cmsb,
				isar->clsb);
			isar->write_reg(isar->hw, ISAR_IIA, 0);
		}
		break;
	case ISAR_IIS_DIAG:
	case ISAR_IIS_BSTRSP:
	case ISAR_IIS_IOM2RSP:
		FUNC8(isar, NULL);
		break;
	case ISAR_IIS_INVMSG:
		FUNC8(isar, NULL);
		FUNC7("%s: invalid msg his:%x\n", isar->name, isar->cmsb);
		break;
	default:
		FUNC8(isar, NULL);
		FUNC7("%s: unhandled msg iis(%x) ctrl(%x/%x)\n",
			isar->name, isar->iis, isar->cmsb, isar->clsb);
		break;
	}
}