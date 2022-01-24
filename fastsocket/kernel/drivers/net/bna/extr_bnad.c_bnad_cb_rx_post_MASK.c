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
struct bnad_rx_info {struct bnad_rx_ctrl* rx_ctrl; } ;
struct bnad_rx_ctrl {int /*<<< orphan*/  napi; struct bna_ccb* ccb; } ;
struct bnad {int dummy; } ;
struct bna_rx {scalar_t__ priv; } ;
struct bna_rcb {int /*<<< orphan*/  flags; } ;
struct bna_ccb {struct bna_rcb** rcb; } ;

/* Variables and functions */
 int BNAD_MAX_RXP_PER_RX ; 
 int BNAD_MAX_RXQ_PER_RXP ; 
 int /*<<< orphan*/  BNAD_RXQ_POST_OK ; 
 int /*<<< orphan*/  BNAD_RXQ_STARTED ; 
 int /*<<< orphan*/  FUNC0 (struct bnad*,struct bna_rcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnad*,struct bna_rcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bnad *bnad, struct bna_rx *rx)
{
	struct bnad_rx_info *rx_info = (struct bnad_rx_info *)rx->priv;
	struct bna_ccb *ccb;
	struct bna_rcb *rcb;
	struct bnad_rx_ctrl *rx_ctrl;
	int i, j;

	for (i = 0; i < BNAD_MAX_RXP_PER_RX; i++) {
		rx_ctrl = &rx_info->rx_ctrl[i];
		ccb = rx_ctrl->ccb;
		if (!ccb)
			continue;

		FUNC2(&rx_ctrl->napi);

		for (j = 0; j < BNAD_MAX_RXQ_PER_RXP; j++) {
			rcb = ccb->rcb[j];
			if (!rcb)
				continue;

			FUNC0(bnad, rcb);
			FUNC3(BNAD_RXQ_STARTED, &rcb->flags);
			FUNC3(BNAD_RXQ_POST_OK, &rcb->flags);
			FUNC1(bnad, rcb);
		}
	}
}