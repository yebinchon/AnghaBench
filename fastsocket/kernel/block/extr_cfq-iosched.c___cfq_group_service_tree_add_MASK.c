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
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct TYPE_2__ {struct rb_node* rb_node; } ;
struct cfq_rb_root {TYPE_1__ rb; int /*<<< orphan*/ * left; } ;
struct cfq_group {int /*<<< orphan*/  rb_node; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cfq_rb_root*,struct cfq_group*) ; 
 struct cfq_group* FUNC1 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 

__attribute__((used)) static void
FUNC4(struct cfq_rb_root *st, struct cfq_group *cfqg)
{
	struct rb_node **node = &st->rb.rb_node;
	struct rb_node *parent = NULL;
	struct cfq_group *__cfqg;
	s64 key = FUNC0(st, cfqg);
	int left = 1;

	while (*node != NULL) {
		parent = *node;
		__cfqg = FUNC1(parent);

		if (key < FUNC0(st, __cfqg))
			node = &parent->rb_left;
		else {
			node = &parent->rb_right;
			left = 0;
		}
	}

	if (left)
		st->left = &cfqg->rb_node;

	FUNC3(&cfqg->rb_node, parent, node);
	FUNC2(&cfqg->rb_node, &st->rb);
}