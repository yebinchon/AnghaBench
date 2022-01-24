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
struct TYPE_2__ {struct rb_node* rb_node; } ;
struct throtl_rb_root {TYPE_1__ rb; int /*<<< orphan*/ * left; } ;
struct throtl_grp {unsigned long disptime; int /*<<< orphan*/  rb_node; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;

/* Variables and functions */
 struct throtl_grp* FUNC0 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct throtl_rb_root *st, struct throtl_grp *tg)
{
	struct rb_node **node = &st->rb.rb_node;
	struct rb_node *parent = NULL;
	struct throtl_grp *__tg;
	unsigned long key = tg->disptime;
	int left = 1;

	while (*node != NULL) {
		parent = *node;
		__tg = FUNC0(parent);

		if (FUNC3(key, __tg->disptime))
			node = &parent->rb_left;
		else {
			node = &parent->rb_right;
			left = 0;
		}
	}

	if (left)
		st->left = &tg->rb_node;

	FUNC2(&tg->rb_node, parent, node);
	FUNC1(&tg->rb_node, &st->rb);
}