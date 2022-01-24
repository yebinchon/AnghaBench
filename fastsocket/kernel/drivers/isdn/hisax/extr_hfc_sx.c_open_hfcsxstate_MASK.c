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
struct IsdnCardState {int dummy; } ;
struct BCState {scalar_t__ tx_cnt; scalar_t__ event; int /*<<< orphan*/  Flag; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/  squeue; int /*<<< orphan*/  rqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BC_FLG_BUSY ; 
 int /*<<< orphan*/  BC_FLG_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct IsdnCardState *cs, struct BCState *bcs)
{
	if (!FUNC2(BC_FLG_INIT, &bcs->Flag)) {
		FUNC0(&bcs->rqueue);
		FUNC0(&bcs->squeue);
	}
	bcs->tx_skb = NULL;
	FUNC1(BC_FLG_BUSY, &bcs->Flag);
	bcs->event = 0;
	bcs->tx_cnt = 0;
	return (0);
}