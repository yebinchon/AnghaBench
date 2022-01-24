#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {int len; scalar_t__ truesize; int /*<<< orphan*/ * data; } ;
struct hisax_if {int dummy; } ;
struct hfc4s8s_l1 {int st_num; TYPE_4__* hw; int /*<<< orphan*/  enabled; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* l1l2 ) (struct hisax_if*,int,void*) ;} ;
struct TYPE_15__ {TYPE_2__ ifc; } ;
struct hfc4s8s_btype {scalar_t__ mode; int bchan; int tx_cnt; TYPE_3__ b_if; struct sk_buff* tx_skb; int /*<<< orphan*/  tx_queue; struct hfc4s8s_l1* l1p; } ;
struct TYPE_13__ {int* fifo_slow_timer_service; } ;
struct TYPE_16__ {TYPE_1__ mr; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_F1 ; 
 int /*<<< orphan*/  A_F2 ; 
 int /*<<< orphan*/  A_FIFO_DATA0 ; 
 int /*<<< orphan*/  A_INC_RES_FIFO ; 
 int /*<<< orphan*/  A_Z1 ; 
 int /*<<< orphan*/  A_Z2 ; 
 int CONFIRM ; 
 scalar_t__ L1_MODE_HDLC ; 
 scalar_t__ L1_MODE_NULL ; 
 int MAX_F_CNT ; 
 int PH_DATA ; 
 int /*<<< orphan*/  R_FIFO ; 
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,...) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct hisax_if*,int,void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC12(struct hfc4s8s_btype *bch)
{
	struct sk_buff *skb;
	struct hfc4s8s_l1 *l1 = bch->l1p;
	u_char *cp;
	int cnt, max, hdlc_num;
	long ack_len = 0;

	if (!l1->enabled || (bch->mode == L1_MODE_NULL))
		return;

	/* TX fifo */
	FUNC5(l1->hw, R_FIFO,
		   (l1->st_num * 8 + ((bch->bchan == 1) ? 0 : 2)));
	FUNC11(l1->hw);
	do {

		if (bch->mode == L1_MODE_HDLC) {
			hdlc_num = FUNC2(l1->hw, A_F1) & MAX_F_CNT;
			hdlc_num -=
			    (FUNC3(l1->hw, A_F2) & MAX_F_CNT);
			if (hdlc_num < 0)
				hdlc_num += 16;
			if (hdlc_num >= 15)
				break;	/* fifo still filled up with hdlc frames */
		} else
			hdlc_num = 0;

		if (!(skb = bch->tx_skb)) {
			if (!(skb = FUNC9(&bch->tx_queue))) {
				l1->hw->mr.fifo_slow_timer_service[l1->
								   st_num]
				    &= ~((bch->bchan == 1) ? 1 : 4);
				break;	/* list empty */
			}
			bch->tx_skb = skb;
			bch->tx_cnt = 0;
		}

		if (!hdlc_num)
			l1->hw->mr.fifo_slow_timer_service[l1->st_num] |=
			    ((bch->bchan == 1) ? 1 : 4);
		else
			l1->hw->mr.fifo_slow_timer_service[l1->st_num] &=
			    ~((bch->bchan == 1) ? 1 : 4);

		max = FUNC1(l1->hw, A_Z2);
		max -= FUNC0(l1->hw, A_Z1);
		if (max <= 0)
			max += 384;
		max--;

		if (max < 16)
			break;	/* don't write to small amounts of bytes */

		cnt = skb->len - bch->tx_cnt;
		if (cnt > max)
			cnt = max;
		cp = skb->data + bch->tx_cnt;
		bch->tx_cnt += cnt;

#ifndef HISAX_HFC4S8S_PCIMEM
		FUNC4(l1->hw, A_FIFO_DATA0);
#endif
		while (cnt >= 4) {
#ifdef HISAX_HFC4S8S_PCIMEM
			fWrite_hfc32(l1->hw, A_FIFO_DATA0,
				     *(unsigned long *) cp);
#else
			FUNC7(l1->hw, *(unsigned long *) cp);
#endif
			cp += 4;
			cnt -= 4;
		}

		while (cnt--)
#ifdef HISAX_HFC4S8S_PCIMEM
			fWrite_hfc8(l1->hw, A_FIFO_DATA0, *cp++);
#else
			FUNC8(l1->hw, *cp++);
#endif

		if (bch->tx_cnt >= skb->len) {
			if (bch->mode == L1_MODE_HDLC) {
				/* increment f counter */
				FUNC5(l1->hw, A_INC_RES_FIFO, 1);
			}
			ack_len += skb->truesize;
			bch->tx_skb = NULL;
			bch->tx_cnt = 0;
			FUNC6(skb);
		} else
			/* Re-Select */
			FUNC5(l1->hw, R_FIFO,
				   (l1->st_num * 8 +
				    ((bch->bchan == 1) ? 0 : 2)));
		FUNC11(l1->hw);
	} while (1);

	if (ack_len)
		bch->b_if.ifc.l1l2((struct hisax_if *) &bch->b_if,
				   PH_DATA | CONFIRM, (void *) ack_len);
}