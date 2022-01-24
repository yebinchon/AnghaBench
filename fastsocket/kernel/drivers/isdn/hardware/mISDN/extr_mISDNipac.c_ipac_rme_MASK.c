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
typedef  int u8 ;
struct TYPE_6__ {int debug; TYPE_2__* rx_skb; int /*<<< orphan*/  nr; int /*<<< orphan*/  state; } ;
struct hscx_hw {int fifo_size; TYPE_3__ bch; TYPE_1__* ip; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_4__ {int type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int DEBUG_HW_BCHANNEL ; 
 int /*<<< orphan*/  IPACX_RBCLB ; 
 int /*<<< orphan*/  IPACX_RSTAB ; 
 int /*<<< orphan*/  IPAC_RBCLB ; 
 int /*<<< orphan*/  IPAC_RSTAB ; 
 int IPAC_TYPE_IPACX ; 
 int FUNC0 (struct hscx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hscx_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hscx_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC7(struct hscx_hw *hx)
{
	int count;
	u8 rstab;

	if (hx->ip->type & IPAC_TYPE_IPACX)
		rstab = FUNC0(hx, IPACX_RSTAB);
	else
		rstab = FUNC0(hx, IPAC_RSTAB);
	FUNC3("%s: B%1d RSTAB %02x\n", hx->ip->name, hx->bch.nr, rstab);
	if ((rstab & 0xf0) != 0xa0) {
		/* !(VFR && !RDO && CRC && !RAB) */
		if (!(rstab & 0x80)) {
			if (hx->bch.debug & DEBUG_HW_BCHANNEL)
				FUNC4("%s: B%1d invalid frame\n",
					hx->ip->name, hx->bch.nr);
		}
		if (rstab & 0x40) {
			if (hx->bch.debug & DEBUG_HW_BCHANNEL)
				FUNC4("%s: B%1d RDO proto=%x\n",
					hx->ip->name, hx->bch.nr,
					hx->bch.state);
		}
		if (!(rstab & 0x20)) {
			if (hx->bch.debug & DEBUG_HW_BCHANNEL)
				FUNC4("%s: B%1d CRC error\n",
					hx->ip->name, hx->bch.nr);
		}
		FUNC1(hx, 0x80); /* Do RMC */
		return;
	}
	if (hx->ip->type & IPAC_TYPE_IPACX)
		count = FUNC0(hx, IPACX_RBCLB);
	else
		count = FUNC0(hx, IPAC_RBCLB);
	count &= (hx->fifo_size - 1);
	if (count == 0)
		count = hx->fifo_size;
	FUNC2(hx, count);
	if (!hx->bch.rx_skb)
		return;
	if (hx->bch.rx_skb->len < 2) {
		FUNC3("%s: B%1d frame to short %d\n",
			hx->ip->name, hx->bch.nr, hx->bch.rx_skb->len);
		FUNC6(hx->bch.rx_skb, 0);
	} else {
		FUNC6(hx->bch.rx_skb, hx->bch.rx_skb->len - 1);
		FUNC5(&hx->bch, 0);
	}
}