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
struct request {int /*<<< orphan*/  rb_node; } ;
struct rb_node {int dummy; } ;

/* Variables and functions */
 struct request* FUNC0 (struct rb_node*) ; 
 struct rb_node* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct request *
FUNC2(struct request *rq)
{
	struct rb_node *node = FUNC1(&rq->rb_node);

	if (node)
		return FUNC0(node);

	return NULL;
}