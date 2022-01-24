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
struct bio {struct bio* bi_next; int /*<<< orphan*/ * bi_bdev; int /*<<< orphan*/  bi_max_vecs; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  __GFP_WAIT ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bio *FUNC4(struct bio *old_chain, gfp_t gfpmask)
{
	struct bio *tmp, *new_chain = NULL, *tail = NULL;

	while (old_chain) {
		tmp = FUNC3(gfpmask, old_chain->bi_max_vecs);
		if (!tmp)
			goto err_out;

		FUNC1(tmp, old_chain);
		tmp->bi_bdev = NULL;
		gfpmask &= ~__GFP_WAIT;
		tmp->bi_next = NULL;

		if (!new_chain)
			new_chain = tail = tmp;
		else {
			tail->bi_next = tmp;
			tail = tmp;
		}

		old_chain = old_chain->bi_next;
	}

	return new_chain;

err_out:
	FUNC0("bio_chain_clone with err\n");
	FUNC2(new_chain);
	return NULL;
}