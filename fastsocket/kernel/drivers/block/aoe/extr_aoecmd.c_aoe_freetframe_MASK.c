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
struct frame {int /*<<< orphan*/  head; scalar_t__ flags; int /*<<< orphan*/ * r_skb; int /*<<< orphan*/ * bv; scalar_t__ lba; int /*<<< orphan*/ * buf; struct aoetgt* t; } ;
struct aoetgt {int /*<<< orphan*/  ffree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC1(struct frame *f)
{
	struct aoetgt *t;

	t = f->t;
	f->buf = NULL;
	f->lba = 0;
	f->bv = NULL;
	f->r_skb = NULL;
	f->flags = 0;
	FUNC0(&f->head, &t->ffree);
}