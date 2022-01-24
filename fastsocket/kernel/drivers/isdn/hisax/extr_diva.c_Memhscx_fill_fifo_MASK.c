#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_6__ {int /*<<< orphan*/  cfg_reg; } ;
struct TYPE_7__ {TYPE_1__ diva; } ;
struct IsdnCardState {int debug; TYPE_2__ hw; int /*<<< orphan*/  HW_Flags; } ;
struct TYPE_8__ {int count; scalar_t__ hscx; } ;
struct TYPE_9__ {TYPE_3__ hscx; } ;
struct BCState {scalar_t__ mode; int tx_cnt; char* blog; TYPE_4__ hw; TYPE_5__* tx_skb; struct IsdnCardState* cs; } ;
struct TYPE_10__ {int len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_IPAC ; 
 int L1_DEB_HSCX ; 
 int L1_DEB_HSCX_FIFO ; 
 scalar_t__ L1_MODE_TRANS ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct BCState *bcs)
{
	struct IsdnCardState *cs = bcs->cs;
	int more, count, cnt;
	int fifo_size = FUNC7(HW_IPAC, &cs->HW_Flags)? 64: 32;
	u_char *ptr,*p;

	if ((cs->debug & L1_DEB_HSCX) && !(cs->debug & L1_DEB_HSCX_FIFO))
		FUNC3(cs, "hscx_fill_fifo");

	if (!bcs->tx_skb)
		return;
	if (bcs->tx_skb->len <= 0)
		return;

	more = (bcs->mode == L1_MODE_TRANS) ? 1 : 0;
	if (bcs->tx_skb->len > fifo_size) {
		more = !0;
		count = fifo_size;
	} else
		count = bcs->tx_skb->len;
	cnt = count;
	FUNC1(cs, bcs->hw.hscx.hscx);
	p = ptr = bcs->tx_skb->data;
	FUNC5(bcs->tx_skb, count);
	bcs->tx_cnt -= count;
	bcs->hw.hscx.count += count;
	while(cnt--)
		FUNC4(cs->hw.diva.cfg_reg, bcs->hw.hscx.hscx ? 0x40 : 0,
			*p++);
	FUNC0(cs, bcs->hw.hscx.hscx, more ? 0x8 : 0xa);
	if (cs->debug & L1_DEB_HSCX_FIFO) {
		char *t = bcs->blog;

		t += FUNC6(t, "hscx_fill_fifo %c cnt %d",
			     bcs->hw.hscx.hscx ? 'B' : 'A', count);
		FUNC2(t, ptr, count);
		FUNC3(cs, bcs->blog);
	}
}