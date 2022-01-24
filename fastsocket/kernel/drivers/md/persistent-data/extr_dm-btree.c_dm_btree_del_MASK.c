#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct frame {scalar_t__ current_child; scalar_t__ nr_children; TYPE_3__* n; scalar_t__ level; } ;
struct TYPE_6__ {int /*<<< orphan*/  context; int /*<<< orphan*/  (* dec ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct dm_btree_info {TYPE_2__ value_type; int /*<<< orphan*/  tm; } ;
struct del_stack {int top; int /*<<< orphan*/  tm; struct dm_btree_info* info; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {TYPE_1__ header; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INTERNAL_NODE ; 
 scalar_t__ FUNC0 (struct dm_btree_info*,struct frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct del_stack*) ; 
 struct del_stack* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct del_stack*) ; 
 int FUNC5 (struct del_stack*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct del_stack*,struct frame**) ; 
 scalar_t__ FUNC8 (struct del_stack*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,unsigned int) ; 

int FUNC11(struct dm_btree_info *info, dm_block_t root)
{
	int r;
	struct del_stack *s;

	s = FUNC2(sizeof(*s), GFP_KERNEL);
	if (!s)
		return -ENOMEM;
	s->info = info;
	s->tm = info->tm;
	s->top = -1;

	r = FUNC5(s, root, 0);
	if (r)
		goto out;

	while (FUNC8(s)) {
		uint32_t flags;
		struct frame *f;
		dm_block_t b;

		r = FUNC7(s, &f);
		if (r)
			goto out;

		if (f->current_child >= f->nr_children) {
			FUNC4(s);
			continue;
		}

		flags = FUNC3(f->n->header.flags);
		if (flags & INTERNAL_NODE) {
			b = FUNC9(f->n, f->current_child);
			f->current_child++;
			r = FUNC5(s, b, f->level);
			if (r)
				goto out;

		} else if (FUNC0(info, f)) {
			b = FUNC9(f->n, f->current_child);
			f->current_child++;
			r = FUNC5(s, b, f->level + 1);
			if (r)
				goto out;

		} else {
			if (info->value_type.dec) {
				unsigned i;

				for (i = 0; i < f->nr_children; i++)
					info->value_type.dec(info->value_type.context,
							     FUNC10(f->n, i));
			}
			FUNC4(s);
		}
	}

out:
	FUNC1(s);
	return r;
}