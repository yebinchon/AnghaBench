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
typedef  int u8 ;
struct w6692_hw {int /*<<< orphan*/  name; struct w6692_ch* bc; } ;
struct TYPE_4__ {int state; scalar_t__ tx_idx; int /*<<< orphan*/  Flags; scalar_t__ tx_skb; int /*<<< orphan*/  err_xdu; int /*<<< orphan*/  nr; int /*<<< orphan*/  err_rdo; TYPE_1__* rx_skb; int /*<<< orphan*/  err_inv; int /*<<< orphan*/  err_crc; } ;
struct w6692_ch {TYPE_2__ bch; } ;
struct TYPE_3__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_ACTIVE ; 
 int /*<<< orphan*/  FLG_HDLC ; 
 int /*<<< orphan*/  FLG_TRANSPARENT ; 
 int FUNC0 (struct w6692_ch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct w6692_ch*,int) ; 
 int /*<<< orphan*/  W_B_CMDR ; 
 int W_B_CMDR_RACK ; 
 int W_B_CMDR_RACT ; 
 int W_B_CMDR_RRST ; 
 int W_B_CMDR_XRST ; 
 int /*<<< orphan*/  W_B_EXIR ; 
 int W_B_EXI_RDOV ; 
 int W_B_EXI_RME ; 
 int W_B_EXI_RMR ; 
 int W_B_EXI_XDUN ; 
 int W_B_EXI_XFR ; 
 int W_B_FIFO_THRESH ; 
 int /*<<< orphan*/  W_B_RBCL ; 
 int /*<<< orphan*/  W_B_STAR ; 
 int W_B_STAR_CRCE ; 
 int W_B_STAR_RDOV ; 
 int W_B_STAR_RMB ; 
 int W_B_STAR_XDOW ; 
 int /*<<< orphan*/  FUNC2 (struct w6692_ch*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct w6692_ch*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct w6692_hw *card, int ch)
{
	struct w6692_ch	*wch = &card->bc[ch];
	int		count;
	u8		stat, star = 0;

	stat = FUNC0(wch, W_B_EXIR);
	FUNC3("%s: B%d EXIR %02x\n", card->name, wch->bch.nr, stat);
	if (stat & W_B_EXI_RME) {
		star = FUNC0(wch, W_B_STAR);
		if (star & (W_B_STAR_RDOV | W_B_STAR_CRCE | W_B_STAR_RMB)) {
			if ((star & W_B_STAR_RDOV) &&
			    FUNC7(FLG_ACTIVE, &wch->bch.Flags)) {
				FUNC3("%s: B%d RDOV proto=%x\n", card->name,
					wch->bch.nr, wch->bch.state);
#ifdef ERROR_STATISTIC
				wch->bch.err_rdo++;
#endif
			}
			if (FUNC7(FLG_HDLC, &wch->bch.Flags)) {
				if (star & W_B_STAR_CRCE) {
					FUNC3("%s: B%d CRC error\n",
						card->name, wch->bch.nr);
#ifdef ERROR_STATISTIC
					wch->bch.err_crc++;
#endif
				}
				if (star & W_B_STAR_RMB) {
					FUNC3("%s: B%d message abort\n",
						card->name, wch->bch.nr);
#ifdef ERROR_STATISTIC
					wch->bch.err_inv++;
#endif
				}
			}
			FUNC2(wch, W_B_CMDR, W_B_CMDR_RACK |
				W_B_CMDR_RRST | W_B_CMDR_RACT);
			if (wch->bch.rx_skb)
				FUNC6(wch->bch.rx_skb, 0);
		} else {
			count = FUNC0(wch, W_B_RBCL) &
				(W_B_FIFO_THRESH - 1);
			if (count == 0)
				count = W_B_FIFO_THRESH;
			FUNC1(wch, count);
			FUNC4(&wch->bch, 0);
		}
	}
	if (stat & W_B_EXI_RMR) {
		if (!(stat & W_B_EXI_RME))
			star = FUNC0(wch, W_B_STAR);
		if (star & W_B_STAR_RDOV) {
			FUNC3("%s: B%d RDOV proto=%x\n", card->name,
				wch->bch.nr, wch->bch.state);
#ifdef ERROR_STATISTIC
			wch->bch.err_rdo++;
#endif
			FUNC2(wch, W_B_CMDR, W_B_CMDR_RACK |
				W_B_CMDR_RRST | W_B_CMDR_RACT);
		} else {
			FUNC1(wch, W_B_FIFO_THRESH);
			if (FUNC7(FLG_TRANSPARENT, &wch->bch.Flags) &&
			    wch->bch.rx_skb && (wch->bch.rx_skb->len > 0))
				FUNC4(&wch->bch, 0);
		}
	}
	if (stat & W_B_EXI_RDOV) {
		/* only if it is not handled yet */
		if (!(star & W_B_STAR_RDOV)) {
			FUNC3("%s: B%d RDOV IRQ proto=%x\n", card->name,
				wch->bch.nr, wch->bch.state);
#ifdef ERROR_STATISTIC
			wch->bch.err_rdo++;
#endif
			FUNC2(wch, W_B_CMDR, W_B_CMDR_RACK |
				W_B_CMDR_RRST | W_B_CMDR_RACT);
		}
	}
	if (stat & W_B_EXI_XFR) {
		if (!(stat & (W_B_EXI_RME | W_B_EXI_RMR))) {
			star = FUNC0(wch, W_B_STAR);
			FUNC3("%s: B%d star %02x\n", card->name,
				wch->bch.nr, star);
		}
		if (star & W_B_STAR_XDOW) {
			FUNC3("%s: B%d XDOW proto=%x\n", card->name,
				wch->bch.nr, wch->bch.state);
#ifdef ERROR_STATISTIC
			wch->bch.err_xdu++;
#endif
			FUNC2(wch, W_B_CMDR, W_B_CMDR_XRST |
				W_B_CMDR_RACT);
			/* resend */
			if (wch->bch.tx_skb) {
				if (!FUNC7(FLG_TRANSPARENT, &wch->bch.Flags))
					wch->bch.tx_idx = 0;
			}
		}
		FUNC5(wch);
		if (stat & W_B_EXI_XDUN)
			return; /* handle XDOW only once */
	}
	if (stat & W_B_EXI_XDUN) {
		FUNC3("%s: B%d XDUN proto=%x\n", card->name,
			wch->bch.nr, wch->bch.state);
#ifdef ERROR_STATISTIC
		wch->bch.err_xdu++;
#endif
		FUNC2(wch, W_B_CMDR, W_B_CMDR_XRST | W_B_CMDR_RACT);
		/* resend */
		if (wch->bch.tx_skb) {
			if (!FUNC7(FLG_TRANSPARENT, &wch->bch.Flags))
				wch->bch.tx_idx = 0;
		}
		FUNC5(wch);
	}
}