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
struct rb_node {int dummy; } ;
struct request {struct rb_node rb_node; } ;
struct cfq_queue {int /*<<< orphan*/  sort_list; } ;
struct cfq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 struct request* FUNC3 (struct cfq_data*,struct request*,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC4 (struct rb_node*) ; 
 struct rb_node* FUNC5 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC6 (struct rb_node*) ; 
 struct rb_node* FUNC7 (struct rb_node*) ; 

__attribute__((used)) static struct request *
FUNC8(struct cfq_data *cfqd, struct cfq_queue *cfqq,
		  struct request *last)
{
	struct rb_node *rbnext = FUNC6(&last->rb_node);
	struct rb_node *rbprev = FUNC7(&last->rb_node);
	struct request *next = NULL, *prev = NULL;

	FUNC0(FUNC1(&last->rb_node));

	if (rbprev)
		prev = FUNC4(rbprev);

	if (rbnext)
		next = FUNC4(rbnext);
	else {
		rbnext = FUNC5(&cfqq->sort_list);
		if (rbnext && rbnext != &last->rb_node)
			next = FUNC4(rbnext);
	}

	return FUNC3(cfqd, next, prev, FUNC2(last));
}