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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int tx_idx; int nr; int debug; TYPE_1__* tx_skb; int /*<<< orphan*/  Flags; } ;
struct hscx_hw {int fifo_size; int /*<<< orphan*/  log; TYPE_3__* ip; TYPE_2__ bch; scalar_t__ off; } ;
struct TYPE_6__ {char* name; int type; int /*<<< orphan*/  hw; int /*<<< orphan*/  (* write_fifo ) (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_4__ {int len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int DEBUG_HW_BFIFO ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  FLG_TRANSPARENT ; 
 scalar_t__ IPACX_XFIFOB ; 
 int IPAC_TYPE_IPACX ; 
 int /*<<< orphan*/  FUNC0 (struct hscx_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hscx_hw*) ; 

__attribute__((used)) static void
FUNC8(struct hscx_hw *hscx)
{
	int count, more;
	u8 *p;

	if (!hscx->bch.tx_skb)
		return;
	count = hscx->bch.tx_skb->len - hscx->bch.tx_idx;
	if (count <= 0)
		return;
	p = hscx->bch.tx_skb->data + hscx->bch.tx_idx;

	more = FUNC6(FLG_TRANSPARENT, &hscx->bch.Flags) ? 1 : 0;
	if (count > hscx->fifo_size) {
		count = hscx->fifo_size;
		more = 1;
	}
	FUNC1("%s: B%1d %d/%d/%d\n", hscx->ip->name, hscx->bch.nr, count,
		hscx->bch.tx_idx, hscx->bch.tx_skb->len);
	hscx->bch.tx_idx += count;

	if (hscx->ip->type & IPAC_TYPE_IPACX)
		hscx->ip->write_fifo(hscx->ip->hw,
			hscx->off + IPACX_XFIFOB, p, count);
	else {
		FUNC7(hscx);
		hscx->ip->write_fifo(hscx->ip->hw,
			hscx->off, p, count);
	}
	FUNC0(hscx, more ? 0x08 : 0x0a);

	if (hscx->bch.debug & DEBUG_HW_BFIFO) {
		FUNC3(hscx->log, 64, "B%1d-send %s %d ",
			hscx->bch.nr, hscx->ip->name, count);
		FUNC2(hscx->log, DUMP_PREFIX_OFFSET, p, count);
	}
}