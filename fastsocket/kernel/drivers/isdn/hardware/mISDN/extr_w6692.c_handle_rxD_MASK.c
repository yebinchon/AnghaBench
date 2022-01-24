#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  err_rx; int /*<<< orphan*/  err_crc; } ;
struct w6692_hw {TYPE_1__ dch; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct w6692_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct w6692_hw*,int) ; 
 int /*<<< orphan*/  W_D_CMDR ; 
 int W_D_CMDR_RACK ; 
 int W_D_CMDR_RRST ; 
 int W_D_FIFO_THRESH ; 
 int /*<<< orphan*/  W_D_RBCL ; 
 int /*<<< orphan*/  W_D_RSTA ; 
 int W_D_RSTA_CRCE ; 
 int W_D_RSTA_RDOV ; 
 int W_D_RSTA_RMB ; 
 int /*<<< orphan*/  FUNC2 (struct w6692_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(struct w6692_hw *card) {
	u8	stat;
	int	count;

	stat = FUNC0(card, W_D_RSTA);
	if (stat & (W_D_RSTA_RDOV | W_D_RSTA_CRCE | W_D_RSTA_RMB)) {
		if (stat & W_D_RSTA_RDOV) {
			FUNC4("%s: D-channel RDOV\n", card->name);
#ifdef ERROR_STATISTIC
			card->dch.err_rx++;
#endif
		}
		if (stat & W_D_RSTA_CRCE) {
			FUNC4("%s: D-channel CRC error\n", card->name);
#ifdef ERROR_STATISTIC
			card->dch.err_crc++;
#endif
		}
		if (stat & W_D_RSTA_RMB) {
			FUNC4("%s: D-channel ABORT\n", card->name);
#ifdef ERROR_STATISTIC
			card->dch.err_rx++;
#endif
		}
		if (card->dch.rx_skb)
			FUNC3(card->dch.rx_skb);
		card->dch.rx_skb = NULL;
		FUNC2(card, W_D_CMDR, W_D_CMDR_RACK | W_D_CMDR_RRST);
	} else {
		count = FUNC0(card, W_D_RBCL) & (W_D_FIFO_THRESH - 1);
		if (count == 0)
			count = W_D_FIFO_THRESH;
		FUNC1(card, count);
		FUNC5(&card->dch);
	}
}