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
struct l2t_entry {int dummy; } ;
struct l2t_data {unsigned int nentries; TYPE_1__* l2tab; int /*<<< orphan*/  lock; int /*<<< orphan*/  nfree; TYPE_1__* rover; } ;
struct TYPE_2__ {int idx; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  arpq; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2T_STATE_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 struct l2t_data* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct l2t_data *FUNC5(unsigned int l2t_capacity)
{
	struct l2t_data *d;
	int i, size = sizeof(*d) + l2t_capacity * sizeof(struct l2t_entry);

	d = FUNC2(size);
	if (!d)
		return NULL;

	d->nentries = l2t_capacity;
	d->rover = &d->l2tab[1];	/* entry 0 is not used */
	FUNC1(&d->nfree, l2t_capacity - 1);
	FUNC3(&d->lock);

	for (i = 0; i < l2t_capacity; ++i) {
		d->l2tab[i].idx = i;
		d->l2tab[i].state = L2T_STATE_UNUSED;
		FUNC0(&d->l2tab[i].arpq);
		FUNC4(&d->l2tab[i].lock);
		FUNC1(&d->l2tab[i].refcnt, 0);
	}
	return d;
}