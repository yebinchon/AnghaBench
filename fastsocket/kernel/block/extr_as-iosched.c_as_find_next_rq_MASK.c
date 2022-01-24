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
struct as_data {int /*<<< orphan*/ * sort_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_node*) ; 
 struct request* FUNC2 (struct as_data*,struct request*,struct request*) ; 
 struct request* FUNC3 (struct rb_node*) ; 
 struct rb_node* FUNC4 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC5 (struct rb_node*) ; 
 struct rb_node* FUNC6 (struct rb_node*) ; 
 int FUNC7 (struct request*) ; 

__attribute__((used)) static struct request *
FUNC8(struct as_data *ad, struct request *last)
{
	struct rb_node *rbnext = FUNC5(&last->rb_node);
	struct rb_node *rbprev = FUNC6(&last->rb_node);
	struct request *next = NULL, *prev = NULL;

	FUNC0(FUNC1(&last->rb_node));

	if (rbprev)
		prev = FUNC3(rbprev);

	if (rbnext)
		next = FUNC3(rbnext);
	else {
		const int data_dir = FUNC7(last);

		rbnext = FUNC4(&ad->sort_list[data_dir]);
		if (rbnext && rbnext != &last->rb_node)
			next = FUNC3(rbnext);
	}

	return FUNC2(ad, next, prev);
}