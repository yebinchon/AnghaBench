#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct isar_reg {int iis; int cmsb; int bstat; int /*<<< orphan*/  clsb; scalar_t__ par; } ;
struct IsdnCardState {int debug; int /*<<< orphan*/  (* BC_Write_Reg ) (struct IsdnCardState*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_3__* bcs; } ;
struct BCState {int /*<<< orphan*/  mode; int /*<<< orphan*/  err_rdo; int /*<<< orphan*/  err_tx; } ;
struct TYPE_4__ {struct isar_reg* reg; } ;
struct TYPE_5__ {TYPE_1__ isar; } ;
struct TYPE_6__ {TYPE_2__ hw; } ;

/* Variables and functions */
 int BSTEV_RBO ; 
 int BSTEV_TBO ; 
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
 int L1_DEB_HSCX ; 
 int L1_DEB_HSCX_FIFO ; 
 int L1_DEB_WARN ; 
 int /*<<< orphan*/  L1_MODE_FAX ; 
 int /*<<< orphan*/  L1_MODE_V32 ; 
 int PSEV_10MS_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/ * debbuf ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,struct isar_reg*) ; 
 int /*<<< orphan*/  FUNC4 (struct BCState*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct BCState*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct BCState*,struct isar_reg*) ; 
 int /*<<< orphan*/  FUNC7 (struct IsdnCardState*,struct BCState*) ; 
 int /*<<< orphan*/  FUNC8 (struct IsdnCardState*,struct isar_reg*,int /*<<< orphan*/ *) ; 
 struct BCState* FUNC9 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC16(struct IsdnCardState *cs)
{
	struct isar_reg *ireg = cs->bcs[0].hw.isar.reg;
	struct BCState *bcs;

	FUNC3(cs, ireg);
	switch (ireg->iis & ISAR_IIS_MSCMSD) {
		case ISAR_IIS_RDATA:
			if ((bcs = FUNC9(cs, ireg->iis >> 6))) {
				FUNC7(cs, bcs);
			} else {
				FUNC2(cs, "isar spurious IIS_RDATA %x/%x/%x",
					ireg->iis, ireg->cmsb, ireg->clsb);
				cs->BC_Write_Reg(cs, 1, ISAR_IIA, 0);
			}
			break;
		case ISAR_IIS_GSTEV:
			cs->BC_Write_Reg(cs, 1, ISAR_IIA, 0);
			ireg->bstat |= ireg->cmsb;
			FUNC1(cs, ireg->cmsb);
			break;
		case ISAR_IIS_BSTEV:
#ifdef ERROR_STATISTIC
			if ((bcs = sel_bcs_isar(cs, ireg->iis >> 6))) {
				if (ireg->cmsb == BSTEV_TBO)
					bcs->err_tx++;
				if (ireg->cmsb == BSTEV_RBO)
					bcs->err_rdo++;
			}
#endif
			if (cs->debug & L1_DEB_WARN)
				FUNC2(cs, "Buffer STEV dpath%d msb(%x)",
					ireg->iis>>6, ireg->cmsb);
			cs->BC_Write_Reg(cs, 1, ISAR_IIA, 0);
			break;
		case ISAR_IIS_PSTEV:
			if ((bcs = FUNC9(cs, ireg->iis >> 6))) {
				FUNC8(cs, ireg, (u_char *)ireg->par);
				if (bcs->mode == L1_MODE_V32) {
					FUNC5(bcs, ireg->cmsb);
				} else if (bcs->mode == L1_MODE_FAX) {
					FUNC4(bcs, ireg->cmsb);
				} else if (ireg->cmsb == PSEV_10MS_TIMER) {
					if (cs->debug & L1_DEB_HSCX)
						FUNC2(cs, "pump stev TIMER");
				} else {
					if (cs->debug & L1_DEB_WARN)
						FUNC2(cs, "isar IIS_PSTEV pmode %d stat %x",
							bcs->mode, ireg->cmsb);
				}
			} else {
				FUNC2(cs, "isar spurious IIS_PSTEV %x/%x/%x",
					ireg->iis, ireg->cmsb, ireg->clsb);
				cs->BC_Write_Reg(cs, 1, ISAR_IIA, 0);
			}
			break;
		case ISAR_IIS_PSTRSP:
			if ((bcs = FUNC9(cs, ireg->iis >> 6))) {
				FUNC8(cs, ireg, (u_char *)ireg->par);
				FUNC6(bcs, ireg);
			} else {
				FUNC2(cs, "isar spurious IIS_PSTRSP %x/%x/%x",
					ireg->iis, ireg->cmsb, ireg->clsb);
				cs->BC_Write_Reg(cs, 1, ISAR_IIA, 0);
			}
			break;
		case ISAR_IIS_DIAG:
		case ISAR_IIS_BSTRSP:
		case ISAR_IIS_IOM2RSP:
			FUNC8(cs, ireg, (u_char *)ireg->par);
			if ((cs->debug & (L1_DEB_HSCX | L1_DEB_HSCX_FIFO))
				== L1_DEB_HSCX) {
				u_char *tp=debbuf;

				tp += FUNC10(debbuf, "msg iis(%x) msb(%x)",
					ireg->iis, ireg->cmsb);
				FUNC0(tp, (u_char *)ireg->par, ireg->clsb);
				FUNC2(cs, debbuf);
			}
			break;
		case ISAR_IIS_INVMSG:
			FUNC8(cs, ireg, debbuf);
			if (cs->debug & L1_DEB_WARN)
				FUNC2(cs, "invalid msg his:%x",
					ireg->cmsb);
			break;
		default:
			FUNC8(cs, ireg, debbuf);
			if (cs->debug & L1_DEB_WARN)
				FUNC2(cs, "unhandled msg iis(%x) ctrl(%x/%x)",
					ireg->iis, ireg->cmsb, ireg->clsb);
			break;
	}
}