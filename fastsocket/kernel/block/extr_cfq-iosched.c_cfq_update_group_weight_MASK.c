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
struct cfq_group {int needs_update; int /*<<< orphan*/  new_weight; int /*<<< orphan*/  weight; int /*<<< orphan*/  rb_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct cfq_group *cfqg)
{
	FUNC0(!FUNC1(&cfqg->rb_node));
	if (cfqg->needs_update) {
		cfqg->weight = cfqg->new_weight;
		cfqg->needs_update = false;
	}
}