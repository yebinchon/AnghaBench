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
struct stripe {int /*<<< orphan*/  key; int /*<<< orphan*/  cnt; struct list_head* lists; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int LIST_LRU ; 
 int /*<<< orphan*/  WRITE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct stripe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct stripe*) ; 

__attribute__((used)) static int FUNC5(struct stripe *stripe)
{
	int r;
	struct list_head *lh = stripe->lists + LIST_LRU;

	/* Delete stripe from LRU (inactive) list if on. */
	FUNC1(lh);
	FUNC0(FUNC4(stripe) < 0);

	/* Lock stripe on first reference */
	r = (FUNC2(&stripe->cnt) == 1) ?
	    FUNC3(stripe, WRITE, stripe->key) : 0;

	return r;
}