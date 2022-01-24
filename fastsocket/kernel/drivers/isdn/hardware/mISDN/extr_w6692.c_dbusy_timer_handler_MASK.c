#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct w6692_hw {int /*<<< orphan*/  lock; int /*<<< orphan*/  name; } ;
struct dchannel {scalar_t__ tx_idx; int /*<<< orphan*/  Flags; struct w6692_hw* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_BUSY_TIMER ; 
 int /*<<< orphan*/  FLG_L1_BUSY ; 
 int FUNC0 (struct w6692_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W_D_CMDR ; 
 int /*<<< orphan*/  W_D_CMDR_XRST ; 
 int /*<<< orphan*/  W_D_RBCH ; 
 int /*<<< orphan*/  W_D_STAR ; 
 int W_D_STAR_XBZ ; 
 int /*<<< orphan*/  FUNC1 (struct w6692_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct dchannel *dch)
{
	struct w6692_hw	*card = dch->hw;
	int		rbch, star;
	u_long		flags;

	if (FUNC8(FLG_BUSY_TIMER, &dch->Flags)) {
		FUNC4(&card->lock, flags);
		rbch = FUNC0(card, W_D_RBCH);
		star = FUNC0(card, W_D_STAR);
		FUNC2("%s: D-Channel Busy RBCH %02x STAR %02x\n",
			card->name, rbch, star);
		if (star & W_D_STAR_XBZ)	/* D-Channel Busy */
			FUNC7(FLG_L1_BUSY, &dch->Flags);
		else {
			/* discard frame; reset transceiver */
			FUNC6(FLG_BUSY_TIMER, &dch->Flags);
			if (dch->tx_idx)
				dch->tx_idx = 0;
			else
				FUNC3("%s: W6692 D-Channel Busy no tx_idx\n",
					card->name);
			/* Transmitter reset */
			FUNC1(card, W_D_CMDR, W_D_CMDR_XRST);
		}
		FUNC5(&card->lock, flags);
	}
}