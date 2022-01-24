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
typedef  int /*<<< orphan*/  u_long ;
typedef  size_t u_int ;
struct Layer2 {unsigned int vs; int va; size_t sow; size_t window; int /*<<< orphan*/  lock; int /*<<< orphan*/  (* l2l1 ) (struct PStack*,int,int /*<<< orphan*/ *) ;TYPE_3__** windowar; int /*<<< orphan*/  i_queue; int /*<<< orphan*/  flag; } ;
struct TYPE_5__ {TYPE_1__* bcs; } ;
struct PStack {struct Layer2 l2; TYPE_2__ l1; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_LAPB ; 
 int /*<<< orphan*/  FLG_MOD128 ; 
 int PH_PULL ; 
 int REQUEST ; 
 scalar_t__ FUNC0 (struct Layer2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct PStack *st, unsigned int nr)
{
	struct Layer2 *l2 = &st->l2;
	u_int p1;
	u_long flags;

	FUNC2(&l2->lock, flags);
	if (l2->vs != nr) {
		while (l2->vs != nr) {
			(l2->vs)--;
			if(FUNC5(FLG_MOD128, &l2->flag)) {
				l2->vs %= 128;
				p1 = (l2->vs - l2->va) % 128;
			} else {
				l2->vs %= 8;
				p1 = (l2->vs - l2->va) % 8;
			}
			p1 = (p1 + l2->sow) % l2->window;
			if (FUNC5(FLG_LAPB, &l2->flag))
				st->l1.bcs->tx_cnt += l2->windowar[p1]->len + FUNC0(l2, 0);
			FUNC1(&l2->i_queue, l2->windowar[p1]);
			l2->windowar[p1] = NULL;
		}
		FUNC3(&l2->lock, flags);
		st->l2.l2l1(st, PH_PULL | REQUEST, NULL);
		return;
	}
	FUNC3(&l2->lock, flags);
}