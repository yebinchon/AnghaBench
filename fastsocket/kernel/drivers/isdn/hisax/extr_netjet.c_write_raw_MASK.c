#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  size_t u_int ;
struct TYPE_15__ {int sendcnt; int* sp; size_t* s_end; size_t* send; size_t s_tot; size_t* sendp; int free; } ;
struct TYPE_16__ {TYPE_5__ tiger; } ;
struct BCState {TYPE_8__* cs; scalar_t__ channel; int /*<<< orphan*/  Flag; TYPE_6__ hw; int /*<<< orphan*/  tqueue; int /*<<< orphan*/  event; int /*<<< orphan*/  squeue; TYPE_7__* tx_skb; int /*<<< orphan*/  aclock; int /*<<< orphan*/  ackcnt; TYPE_4__* st; } ;
struct TYPE_11__ {int /*<<< orphan*/  irqstat0; } ;
struct TYPE_12__ {TYPE_1__ njet; } ;
struct TYPE_18__ {int debug; TYPE_2__ hw; } ;
struct TYPE_17__ {scalar_t__ pkt_type; scalar_t__ len; } ;
struct TYPE_13__ {int /*<<< orphan*/  flag; } ;
struct TYPE_14__ {TYPE_3__ lli; } ;

/* Variables and functions */
 int /*<<< orphan*/  BC_FLG_BUSY ; 
 int /*<<< orphan*/  BC_FLG_EMPTY ; 
 int /*<<< orphan*/  BC_FLG_HALF ; 
 int /*<<< orphan*/  BC_FLG_NOFRAME ; 
 int /*<<< orphan*/  B_ACKPENDING ; 
 int /*<<< orphan*/  B_XMTBUFREADY ; 
 int /*<<< orphan*/  FLG_LLI_L1WAKEUP ; 
 int L1_DEB_HSCX ; 
 int L1_DEB_HSCX_FIFO ; 
 int NETJET_DMA_TXSIZE ; 
 scalar_t__ PACKET_NOACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (struct BCState*,size_t*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct BCState*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct BCState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct BCState *bcs, u_int *buf, int cnt) {
	u_int mask, val, *p=buf;
	u_int i, s_cnt;
        
        if (cnt <= 0)
        	return;
	if (FUNC12(BC_FLG_BUSY, &bcs->Flag)) {
		if (bcs->hw.tiger.sendcnt> cnt) {
			s_cnt = cnt;
			bcs->hw.tiger.sendcnt -= cnt;
		} else {
			s_cnt = bcs->hw.tiger.sendcnt;
			bcs->hw.tiger.sendcnt = 0;
		}
		if (bcs->channel)
			mask = 0xffff00ff;
		else
			mask = 0xffffff00;
		for (i=0; i<s_cnt; i++) {
			val = bcs->channel ? ((bcs->hw.tiger.sp[i] <<8) & 0xff00) :
				(bcs->hw.tiger.sp[i]);
			*p   &= mask;
			*p++ |= val;
			if (p>bcs->hw.tiger.s_end)
				p = bcs->hw.tiger.send;
		}
		bcs->hw.tiger.s_tot += s_cnt;
		if (bcs->cs->debug & L1_DEB_HSCX)
			FUNC0(bcs->cs,"tiger write_raw: c%d %p-%p %d/%d %d %x", bcs->channel,
				buf, p, s_cnt, cnt,
				bcs->hw.tiger.sendcnt, bcs->cs->hw.njet.irqstat0);
		if (bcs->cs->debug & L1_DEB_HSCX_FIFO)
			FUNC4(bcs->cs, bcs->hw.tiger.sp, s_cnt, "snd");
		bcs->hw.tiger.sp += s_cnt;
		bcs->hw.tiger.sendp = p;
		if (!bcs->hw.tiger.sendcnt) {
			if (!bcs->tx_skb) {
				FUNC0(bcs->cs,"tiger write_raw: NULL skb s_cnt %d", s_cnt);
			} else {
				if (FUNC12(FLG_LLI_L1WAKEUP,&bcs->st->lli.flag) &&
					(PACKET_NOACK != bcs->tx_skb->pkt_type)) {
					u_long	flags;
					FUNC8(&bcs->aclock, flags);
					bcs->ackcnt += bcs->tx_skb->len;
					FUNC9(&bcs->aclock, flags);
					FUNC5(bcs, B_ACKPENDING);
				}
				FUNC1(bcs->tx_skb);
				bcs->tx_skb = NULL;
			}
			FUNC10(BC_FLG_BUSY, &bcs->Flag);
			bcs->hw.tiger.free = cnt - s_cnt;
			if (bcs->hw.tiger.free > (NETJET_DMA_TXSIZE/2))
				FUNC11(BC_FLG_HALF, &bcs->Flag);
			else {
				FUNC10(BC_FLG_HALF, &bcs->Flag);
				FUNC11(BC_FLG_NOFRAME, &bcs->Flag);
			}
			if ((bcs->tx_skb = FUNC7(&bcs->squeue))) {
				FUNC3(bcs);
			} else {
				mask ^= 0xffffffff;
				if (s_cnt < cnt) {
					for (i=s_cnt; i<cnt;i++) {
						*p++ |= mask;
						if (p>bcs->hw.tiger.s_end)
							p = bcs->hw.tiger.send;
					}
					if (bcs->cs->debug & L1_DEB_HSCX)
						FUNC0(bcs->cs, "tiger write_raw: fill rest %d",
							cnt - s_cnt);
				}
				FUNC11(B_XMTBUFREADY, &bcs->event);
				FUNC6(&bcs->tqueue);
			}
		}
	} else if (FUNC10(BC_FLG_NOFRAME, &bcs->Flag)) {
		FUNC11(BC_FLG_HALF, &bcs->Flag);
		FUNC2(bcs, buf, cnt, bcs->channel, 0xff);
		bcs->hw.tiger.free += cnt;
		if (bcs->cs->debug & L1_DEB_HSCX)
			FUNC0(bcs->cs,"tiger write_raw: fill half");
	} else if (FUNC10(BC_FLG_HALF, &bcs->Flag)) {
		FUNC11(BC_FLG_EMPTY, &bcs->Flag);
		FUNC2(bcs, buf, cnt, bcs->channel, 0xff);
		if (bcs->cs->debug & L1_DEB_HSCX)
			FUNC0(bcs->cs,"tiger write_raw: fill full");
	}
}