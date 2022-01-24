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
struct l2t_data {TYPE_1__* l2tab; int /*<<< orphan*/  lock; int /*<<< orphan*/  nfree; TYPE_1__* rover; } ;
struct TYPE_2__ {int idx; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int L2T_SIZE ; 
 int /*<<< orphan*/  L2T_STATE_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct l2t_data* FUNC3 (int) ; 

struct l2t_data *FUNC4(void)
{
	int i;
	struct l2t_data *d;

	d = FUNC3(sizeof(*d));
	if (!d)
		return NULL;

	d->rover = d->l2tab;
	FUNC0(&d->nfree, L2T_SIZE);
	FUNC1(&d->lock);

	for (i = 0; i < L2T_SIZE; ++i) {
		d->l2tab[i].idx = i;
		d->l2tab[i].state = L2T_STATE_UNUSED;
		FUNC2(&d->l2tab[i].lock);
		FUNC0(&d->l2tab[i].refcnt, 0);
	}
	return d;
}