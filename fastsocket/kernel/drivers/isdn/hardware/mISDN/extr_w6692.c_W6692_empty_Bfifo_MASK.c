#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct w6692_hw {char* name; int /*<<< orphan*/  log; } ;
struct TYPE_5__ {scalar_t__ state; scalar_t__ maxlen; int nr; TYPE_2__* rx_skb; struct w6692_hw* hw; } ;
struct w6692_ch {TYPE_1__ bch; scalar_t__ addr; } ;
struct TYPE_6__ {scalar_t__ len; } ;

/* Variables and functions */
 int DEBUG_HW_DFIFO ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ ISDN_P_NONE ; 
 int /*<<< orphan*/  W_B_CMDR ; 
 int W_B_CMDR_RACK ; 
 int W_B_CMDR_RACT ; 
 scalar_t__ W_B_RFIFO ; 
 int /*<<< orphan*/  FUNC0 (struct w6692_ch*,int /*<<< orphan*/ ,int) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int,char*,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(struct w6692_ch *wch, int count)
{
	struct w6692_hw *card = wch->bch.hw;
	u8 *ptr;

	FUNC3("%s: empty_Bfifo %d\n", card->name, count);
	if (FUNC9(wch->bch.state == ISDN_P_NONE)) {
		FUNC3("%s: empty_Bfifo ISDN_P_NONE\n", card->name);
		FUNC0(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
		if (wch->bch.rx_skb)
			FUNC7(wch->bch.rx_skb, 0);
		return;
	}
	if (!wch->bch.rx_skb) {
		wch->bch.rx_skb = FUNC2(wch->bch.maxlen, GFP_ATOMIC);
		if (FUNC9(!wch->bch.rx_skb)) {
			FUNC4("%s: B receive out of memory\n", card->name);
			FUNC0(wch, W_B_CMDR, W_B_CMDR_RACK |
				W_B_CMDR_RACT);
			return;
		}
	}
	if (wch->bch.rx_skb->len + count > wch->bch.maxlen) {
		FUNC3("%s: empty_Bfifo incoming packet too large\n",
			card->name);
		FUNC0(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
		FUNC7(wch->bch.rx_skb, 0);
		return;
	}
	ptr = FUNC6(wch->bch.rx_skb, count);
	FUNC1(wch->addr + W_B_RFIFO, ptr, count);
	FUNC0(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
	if (debug & DEBUG_HW_DFIFO) {
		FUNC8(card->log, 63, "B%1d-recv %s %d ",
			wch->bch.nr, card->name, count);
		FUNC5(card->log, DUMP_PREFIX_OFFSET, ptr, count);
	}
}