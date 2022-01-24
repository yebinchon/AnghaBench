#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct IsdnCardState {int debug; } ;
struct TYPE_9__ {int /*<<< orphan*/  expires; } ;
struct TYPE_7__ {void* state; int cmd; int newcmd; int mod; int newmod; int try_mod; TYPE_4__ ftimer; TYPE_1__* reg; int /*<<< orphan*/  dpath; } ;
struct TYPE_8__ {TYPE_2__ isar; } ;
struct BCState {TYPE_3__ hw; int /*<<< orphan*/  Flag; int /*<<< orphan*/  st; struct IsdnCardState* cs; } ;
struct TYPE_6__ {int /*<<< orphan*/  Flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BC_FLG_FTI_RUN ; 
 int /*<<< orphan*/  BC_FLG_LL_CONN ; 
 int /*<<< orphan*/  BC_FLG_LL_OK ; 
 int /*<<< orphan*/  BC_FLG_ORIG ; 
 int /*<<< orphan*/  B_LL_CONNECT ; 
 int /*<<< orphan*/  B_LL_NOCARRIER ; 
 int /*<<< orphan*/  B_LL_OK ; 
 int HZ ; 
 int ISAR_HIS_PSTREQ ; 
 int ISAR_HIS_PUMPCTRL ; 
 int /*<<< orphan*/  ISAR_RATE_REQ ; 
 int /*<<< orphan*/  ISDN_FAX_CLASS1_FCERROR ; 
 int /*<<< orphan*/  ISDN_FAX_CLASS1_FRH ; 
 int /*<<< orphan*/  ISDN_FAX_CLASS1_FTH ; 
 int L1_DEB_HSCX ; 
 int L1_DEB_WARN ; 
 int PCTRL_CMD_CONT ; 
 int PCTRL_CMD_ESC ; 
#define  PCTRL_CMD_FRH 143 
#define  PCTRL_CMD_FRM 142 
#define  PCTRL_CMD_FTH 141 
#define  PCTRL_CMD_FTM 140 
 int PCTRL_CMD_SILON ; 
 int PH_ACTIVATE ; 
#define  PSEV_10MS_TIMER 139 
#define  PSEV_FLAGS_DET 138 
#define  PSEV_LINE_RX_B 137 
#define  PSEV_LINE_RX_H 136 
#define  PSEV_LINE_TX_B 135 
#define  PSEV_LINE_TX_H 134 
#define  PSEV_RSP_CONN 133 
#define  PSEV_RSP_DISC 132 
#define  PSEV_RSP_FCERR 131 
#define  PSEV_RSP_READY 130 
#define  PSEV_RSP_SILDET 129 
#define  PSEV_RSP_SILOFF 128 
 int REQUEST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* STFAX_ACTIV ; 
 void* STFAX_CONT ; 
 void* STFAX_ESCAPE ; 
 void* STFAX_LINE ; 
 void* STFAX_READY ; 
 void* STFAX_SILDET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  frm_extra_delay ; 
 int /*<<< orphan*/  FUNC4 (struct BCState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct BCState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct BCState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct BCState*) ; 
 int /*<<< orphan*/  FUNC10 (struct IsdnCardState*,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(struct BCState *bcs, u_char devt) {
	struct IsdnCardState *cs = bcs->cs;
	u_char dps = FUNC0(bcs->hw.isar.dpath);
	u_char p1;

	switch(devt) {
		case PSEV_10MS_TIMER:
			if (cs->debug & L1_DEB_HSCX)
				FUNC2(cs, "pump stev TIMER");
			break;
		case PSEV_RSP_READY:
			if (cs->debug & L1_DEB_HSCX)
				FUNC2(cs, "pump stev RSP_READY");
			bcs->hw.isar.state = STFAX_READY;
			FUNC5(bcs->st, PH_ACTIVATE | REQUEST, NULL);
			if (FUNC13(BC_FLG_ORIG, &bcs->Flag)) {
				FUNC4(bcs, ISDN_FAX_CLASS1_FRH, 3);
			} else {
				FUNC4(bcs, ISDN_FAX_CLASS1_FTH, 3);
			}
			break;
		case PSEV_LINE_TX_H:
			if (bcs->hw.isar.state == STFAX_LINE) {
				if (cs->debug & L1_DEB_HSCX)
					FUNC2(cs, "pump stev LINE_TX_H");
				bcs->hw.isar.state = STFAX_CONT;
				FUNC10(cs, dps | ISAR_HIS_PUMPCTRL, PCTRL_CMD_CONT, 0, NULL);
			} else {
				if (cs->debug & L1_DEB_WARN)
					FUNC2(cs, "pump stev LINE_TX_H wrong st %x",
						bcs->hw.isar.state);
			}
			break;
		case PSEV_LINE_RX_H:
			if (bcs->hw.isar.state == STFAX_LINE) {
				if (cs->debug & L1_DEB_HSCX)
					FUNC2(cs, "pump stev LINE_RX_H");
				bcs->hw.isar.state = STFAX_CONT;
				FUNC10(cs, dps | ISAR_HIS_PUMPCTRL, PCTRL_CMD_CONT, 0, NULL);
			} else {
				if (cs->debug & L1_DEB_WARN)
					FUNC2(cs, "pump stev LINE_RX_H wrong st %x",
						bcs->hw.isar.state);
			}
			break;
		case PSEV_LINE_TX_B:
			if (bcs->hw.isar.state == STFAX_LINE) {
				if (cs->debug & L1_DEB_HSCX)
					FUNC2(cs, "pump stev LINE_TX_B");
				bcs->hw.isar.state = STFAX_CONT;
				FUNC10(cs, dps | ISAR_HIS_PUMPCTRL, PCTRL_CMD_CONT, 0, NULL);
			} else {
				if (cs->debug & L1_DEB_WARN)
					FUNC2(cs, "pump stev LINE_TX_B wrong st %x",
						bcs->hw.isar.state);
			}
			break;
		case PSEV_LINE_RX_B:
			if (bcs->hw.isar.state == STFAX_LINE) {
				if (cs->debug & L1_DEB_HSCX)
					FUNC2(cs, "pump stev LINE_RX_B");
				bcs->hw.isar.state = STFAX_CONT;
				FUNC10(cs, dps | ISAR_HIS_PUMPCTRL, PCTRL_CMD_CONT, 0, NULL);
			} else {
				if (cs->debug & L1_DEB_WARN)
					FUNC2(cs, "pump stev LINE_RX_B wrong st %x",
						bcs->hw.isar.state);
			}
			break;
		case PSEV_RSP_CONN:
			if (bcs->hw.isar.state == STFAX_CONT) {
				if (cs->debug & L1_DEB_HSCX)
					FUNC2(cs, "pump stev RSP_CONN");
				bcs->hw.isar.state = STFAX_ACTIV;
				FUNC12(ISAR_RATE_REQ, &bcs->hw.isar.reg->Flags);
				FUNC10(cs, dps | ISAR_HIS_PSTREQ, 0, 0, NULL);
				if (bcs->hw.isar.cmd == PCTRL_CMD_FTH) {
					/* 1s Flags before data */
					if (FUNC12(BC_FLG_FTI_RUN, &bcs->Flag))
						FUNC3(&bcs->hw.isar.ftimer);
					/* 1000 ms */
					bcs->hw.isar.ftimer.expires =
						jiffies + ((1000 * HZ)/1000);
					FUNC12(BC_FLG_LL_CONN,
						&bcs->Flag);
					FUNC1(&bcs->hw.isar.ftimer);
				} else {
					FUNC8(bcs, B_LL_CONNECT);
				}
			} else {
				if (cs->debug & L1_DEB_WARN)
					FUNC2(cs, "pump stev RSP_CONN wrong st %x",
						bcs->hw.isar.state);
			}
			break;
		case PSEV_FLAGS_DET:
			if (cs->debug & L1_DEB_HSCX)
				FUNC2(cs, "pump stev FLAGS_DET");
			break;
		case PSEV_RSP_DISC:
			if (cs->debug & L1_DEB_HSCX)
				FUNC2(cs, "pump stev RSP_DISC");
			if (bcs->hw.isar.state == STFAX_ESCAPE) {
				p1 = 5;
				switch(bcs->hw.isar.newcmd) {
					case 0:
						bcs->hw.isar.state = STFAX_READY;
						break;
					case PCTRL_CMD_FTM:
						p1 = 2;
					case PCTRL_CMD_FTH:
						FUNC10(cs, dps | ISAR_HIS_PUMPCTRL,
							PCTRL_CMD_SILON, 1, &p1);
						bcs->hw.isar.state = STFAX_SILDET;
						break;
					case PCTRL_CMD_FRM:
						if (frm_extra_delay)
							FUNC7(frm_extra_delay);
					case PCTRL_CMD_FRH:
						p1 = bcs->hw.isar.mod = bcs->hw.isar.newmod;
						bcs->hw.isar.newmod = 0;
						bcs->hw.isar.cmd = bcs->hw.isar.newcmd;
						bcs->hw.isar.newcmd = 0;
						FUNC10(cs, dps | ISAR_HIS_PUMPCTRL,
							bcs->hw.isar.cmd, 1, &p1);
						bcs->hw.isar.state = STFAX_LINE;
						bcs->hw.isar.try_mod = 3;
						break;
					default:
						if (cs->debug & L1_DEB_HSCX)
							FUNC2(cs, "RSP_DISC unknown newcmd %x", bcs->hw.isar.newcmd);
						break;
				}
			} else if (bcs->hw.isar.state == STFAX_ACTIV) {
				if (FUNC11(BC_FLG_LL_OK, &bcs->Flag)) {
					FUNC8(bcs, B_LL_OK);
				} else if (bcs->hw.isar.cmd == PCTRL_CMD_FRM) {
					FUNC9(bcs);
					FUNC8(bcs, B_LL_NOCARRIER);
				} else {
					FUNC6(bcs, ISDN_FAX_CLASS1_FCERROR);
				}
				bcs->hw.isar.state = STFAX_READY;
			} else {
				bcs->hw.isar.state = STFAX_READY;
				FUNC6(bcs, ISDN_FAX_CLASS1_FCERROR);
			}
			break;
		case PSEV_RSP_SILDET:
			if (cs->debug & L1_DEB_HSCX)
				FUNC2(cs, "pump stev RSP_SILDET");
			if (bcs->hw.isar.state == STFAX_SILDET) {
				p1 = bcs->hw.isar.mod = bcs->hw.isar.newmod;
				bcs->hw.isar.newmod = 0;
				bcs->hw.isar.cmd = bcs->hw.isar.newcmd;
				bcs->hw.isar.newcmd = 0;
				FUNC10(cs, dps | ISAR_HIS_PUMPCTRL,
					bcs->hw.isar.cmd, 1, &p1);
				bcs->hw.isar.state = STFAX_LINE;
				bcs->hw.isar.try_mod = 3;
			}
			break;
		case PSEV_RSP_SILOFF:
			if (cs->debug & L1_DEB_HSCX)
				FUNC2(cs, "pump stev RSP_SILOFF");
			break;
		case PSEV_RSP_FCERR:
			if (bcs->hw.isar.state == STFAX_LINE) {
				if (cs->debug & L1_DEB_HSCX)
					FUNC2(cs, "pump stev RSP_FCERR try %d",
						bcs->hw.isar.try_mod);
				if (bcs->hw.isar.try_mod--) {
					FUNC10(cs, dps | ISAR_HIS_PUMPCTRL,
						bcs->hw.isar.cmd, 1,
						&bcs->hw.isar.mod);
					break;
				}
			}
			if (cs->debug & L1_DEB_HSCX)
				FUNC2(cs, "pump stev RSP_FCERR");
			bcs->hw.isar.state = STFAX_ESCAPE;
			FUNC10(cs, dps | ISAR_HIS_PUMPCTRL, PCTRL_CMD_ESC, 0, NULL);
			FUNC6(bcs, ISDN_FAX_CLASS1_FCERROR);
			break;
		default:
			break;
	}
}