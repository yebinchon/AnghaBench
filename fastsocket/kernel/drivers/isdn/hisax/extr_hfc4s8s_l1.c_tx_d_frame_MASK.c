#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct sk_buff {int* data; long len; long truesize; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* l1l2 ) (TYPE_2__*,int,void*) ;} ;
struct TYPE_3__ {TYPE_2__ ifc; } ;
struct hfc4s8s_l1 {int l1_state; int st_num; long tx_cnt; int /*<<< orphan*/  hw; int /*<<< orphan*/  d_tx_queue; TYPE_1__ d_if; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_F1 ; 
 int /*<<< orphan*/  A_F2 ; 
 int /*<<< orphan*/  A_FIFO_DATA0 ; 
 int /*<<< orphan*/  A_INC_RES_FIFO ; 
 int CONFIRM ; 
 int MAX_F_CNT ; 
 int PH_DATA ; 
 int /*<<< orphan*/  R_FIFO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct hfc4s8s_l1 *l1p)
{
	struct sk_buff *skb;
	u_char f1, f2;
	u_char *cp;
	long cnt;

	if (l1p->l1_state != 7)
		return;

	/* TX fifo */
	FUNC3(l1p->hw, R_FIFO, (l1p->st_num * 8 + 4));
	FUNC9(l1p->hw);

	f1 = FUNC0(l1p->hw, A_F1);
	f2 = FUNC1(l1p->hw, A_F2);

	if ((f1 ^ f2) & MAX_F_CNT)
		return;		/* fifo is still filled */

	if (l1p->tx_cnt > 0) {
		cnt = l1p->tx_cnt;
		l1p->tx_cnt = 0;
		l1p->d_if.ifc.l1l2(&l1p->d_if.ifc, PH_DATA | CONFIRM,
				   (void *) cnt);
	}

	if ((skb = FUNC7(&l1p->d_tx_queue))) {
		cp = skb->data;
		cnt = skb->len;
#ifndef HISAX_HFC4S8S_PCIMEM
		FUNC2(l1p->hw, A_FIFO_DATA0);
#endif

		while (cnt >= 4) {
#ifdef HISAX_HFC4S8S_PCIMEM
			fWrite_hfc32(l1p->hw, A_FIFO_DATA0,
				     *(unsigned long *) cp);
#else
			FUNC2(l1p->hw, A_FIFO_DATA0);
			FUNC5(l1p->hw, *(unsigned long *) cp);
#endif
			cp += 4;
			cnt -= 4;
		}

#ifdef HISAX_HFC4S8S_PCIMEM
		while (cnt--)
			fWrite_hfc8(l1p->hw, A_FIFO_DATA0, *cp++);
#else
		while (cnt--)
			FUNC6(l1p->hw, *cp++);
#endif

		l1p->tx_cnt = skb->truesize;
		FUNC3(l1p->hw, A_INC_RES_FIFO, 1);	/* increment f counter */
		FUNC9(l1p->hw);

		FUNC4(skb);
	}
}