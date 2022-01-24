#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_9__ {scalar_t__ cmd; int /*<<< orphan*/  dpath; scalar_t__ txcnt; } ;
struct TYPE_10__ {TYPE_3__ isar; } ;
struct BCState {scalar_t__ mode; int /*<<< orphan*/  Flag; TYPE_4__ hw; int /*<<< orphan*/  cs; int /*<<< orphan*/  squeue; TYPE_5__* tx_skb; int /*<<< orphan*/  aclock; int /*<<< orphan*/  ackcnt; TYPE_2__* st; } ;
struct TYPE_11__ {scalar_t__ pkt_type; scalar_t__ len; } ;
struct TYPE_7__ {int /*<<< orphan*/  flag; } ;
struct TYPE_8__ {TYPE_1__ lli; } ;

/* Variables and functions */
 int /*<<< orphan*/  BC_FLG_BUSY ; 
 int /*<<< orphan*/  BC_FLG_DLEETX ; 
 int /*<<< orphan*/  BC_FLG_LASTDATA ; 
 int /*<<< orphan*/  BC_FLG_LL_OK ; 
 int /*<<< orphan*/  BC_FLG_NMD_DATA ; 
 int /*<<< orphan*/  B_ACKPENDING ; 
 int /*<<< orphan*/  B_LL_CONNECT ; 
 int /*<<< orphan*/  B_XMTBUFREADY ; 
 int /*<<< orphan*/  FLG_LLI_L1WAKEUP ; 
 int ISAR_HIS_SDATA ; 
 scalar_t__ L1_MODE_FAX ; 
 scalar_t__ PACKET_NOACK ; 
 scalar_t__ PCTRL_CMD_FTH ; 
 scalar_t__ PCTRL_CMD_FTM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (struct BCState*) ; 
 int /*<<< orphan*/  FUNC3 (struct BCState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct BCState *bcs)
{
	if (bcs->tx_skb) {
		if (bcs->tx_skb->len) {
			FUNC2(bcs);
			return;
		} else {
			if (FUNC10(FLG_LLI_L1WAKEUP,&bcs->st->lli.flag) &&
				(PACKET_NOACK != bcs->tx_skb->pkt_type)) {
				u_long	flags;
				FUNC6(&bcs->aclock, flags);
				bcs->ackcnt += bcs->hw.isar.txcnt;
				FUNC7(&bcs->aclock, flags);
				FUNC3(bcs, B_ACKPENDING);
			}
			if (bcs->mode == L1_MODE_FAX) {
				if (bcs->hw.isar.cmd == PCTRL_CMD_FTH) {
					if (FUNC10(BC_FLG_LASTDATA, &bcs->Flag)) {
						FUNC9(BC_FLG_NMD_DATA, &bcs->Flag);
					}
				} else if (bcs->hw.isar.cmd == PCTRL_CMD_FTM) {
					if (FUNC10(BC_FLG_DLEETX, &bcs->Flag)) {
						FUNC9(BC_FLG_LASTDATA, &bcs->Flag);
						FUNC9(BC_FLG_NMD_DATA, &bcs->Flag);
					}
				}
			}
			FUNC1(bcs->tx_skb);
			bcs->hw.isar.txcnt = 0; 
			bcs->tx_skb = NULL;
		}
	}
	if ((bcs->tx_skb = FUNC5(&bcs->squeue))) {
		bcs->hw.isar.txcnt = 0;
		FUNC9(BC_FLG_BUSY, &bcs->Flag);
		FUNC2(bcs);
	} else {
		if (FUNC8(BC_FLG_DLEETX, &bcs->Flag)) {
			if (FUNC8(BC_FLG_LASTDATA, &bcs->Flag)) {
				if (FUNC8(BC_FLG_NMD_DATA, &bcs->Flag)) {
					u_char dummy = 0;
					FUNC4(bcs->cs, FUNC0(bcs->hw.isar.dpath) |
						ISAR_HIS_SDATA, 0x01, 1, &dummy);
				}
				FUNC9(BC_FLG_LL_OK, &bcs->Flag);
			} else {
				FUNC3(bcs, B_LL_CONNECT);
			}
		}
		FUNC8(BC_FLG_BUSY, &bcs->Flag);
		FUNC3(bcs, B_XMTBUFREADY);
	}
}