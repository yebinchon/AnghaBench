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
struct IsdnCardState {int debug; int /*<<< orphan*/  (* BC_Write_Reg ) (struct IsdnCardState*,int,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {int count; } ;
struct TYPE_5__ {TYPE_1__ w6692; } ;
struct BCState {scalar_t__ mode; int tx_cnt; int channel; char* blog; TYPE_2__ hw; TYPE_3__* tx_skb; struct IsdnCardState* cs; } ;
struct TYPE_6__ {int len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int L1_DEB_HSCX ; 
 int L1_DEB_HSCX_FIFO ; 
 scalar_t__ L1_MODE_TRANS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  W_B_CMDR ; 
 int W_B_CMDR_RACT ; 
 int W_B_CMDR_XME ; 
 int W_B_CMDR_XMS ; 
 int W_B_FIFO_THRESH ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct BCState *bcs)
{
	struct IsdnCardState *cs = bcs->cs;
	int more, count;
	u_char *ptr;

	if (!bcs->tx_skb)
		return;
	if (bcs->tx_skb->len <= 0)
		return;

	more = (bcs->mode == L1_MODE_TRANS) ? 1 : 0;
	if (bcs->tx_skb->len > W_B_FIFO_THRESH) {
		more = 1;
		count = W_B_FIFO_THRESH;
	} else
		count = bcs->tx_skb->len;

	if ((cs->debug & L1_DEB_HSCX) && !(cs->debug & L1_DEB_HSCX_FIFO))
		FUNC2(cs, "W6692B_fill_fifo%s%d", (more ? " ": " last "), count);

	ptr = bcs->tx_skb->data;
	FUNC3(bcs->tx_skb, count);
	bcs->tx_cnt -= count;
	bcs->hw.w6692.count += count;
	FUNC1(cs, bcs->channel, ptr, count);
	cs->BC_Write_Reg(cs, bcs->channel, W_B_CMDR, W_B_CMDR_RACT | W_B_CMDR_XMS | (more ? 0 : W_B_CMDR_XME));
	if (cs->debug & L1_DEB_HSCX_FIFO) {
		char *t = bcs->blog;

		t += FUNC4(t, "W6692B_fill_fifo %c cnt %d",
			     bcs->channel + '1', count);
		FUNC0(t, ptr, count);
		FUNC2(cs, bcs->blog);
	}
}