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
struct bio_list {int dummy; } ;
struct thin_c {int /*<<< orphan*/  lock; struct bio_list deferred_bio_list; scalar_t__ requeue_mode; struct pool* pool; } ;
struct pool {int /*<<< orphan*/  (* process_bio ) (struct thin_c*,struct bio*) ;int /*<<< orphan*/  (* process_discard ) (struct thin_c*,struct bio*) ;} ;
struct bio {int bi_rw; } ;

/* Variables and functions */
 int BIO_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (struct thin_c*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_list*,struct bio*) ; 
 scalar_t__ FUNC2 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_list*,struct bio_list*) ; 
 struct bio* FUNC5 (struct bio_list*) ; 
 scalar_t__ FUNC6 (struct pool*) ; 
 int /*<<< orphan*/  FUNC7 (struct thin_c*,struct bio_list*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct thin_c*,struct bio*) ; 
 int /*<<< orphan*/  FUNC11 (struct thin_c*,struct bio*) ; 

__attribute__((used)) static void FUNC12(struct thin_c *tc)
{
	struct pool *pool = tc->pool;
	unsigned long flags;
	struct bio *bio;
	struct bio_list bios;

	if (tc->requeue_mode) {
		FUNC7(tc, &tc->deferred_bio_list);
		return;
	}

	FUNC3(&bios);

	FUNC8(&tc->lock, flags);

	if (FUNC2(&tc->deferred_bio_list)) {
		FUNC9(&tc->lock, flags);
		return;
	}

	FUNC0(tc);

	FUNC4(&bios, &tc->deferred_bio_list);
	FUNC3(&tc->deferred_bio_list);

	FUNC9(&tc->lock, flags);

	while ((bio = FUNC5(&bios))) {
		/*
		 * If we've got no free new_mapping structs, and processing
		 * this bio might require one, we pause until there are some
		 * prepared mappings to process.
		 */
		if (FUNC6(pool)) {
			FUNC8(&tc->lock, flags);
			FUNC1(&tc->deferred_bio_list, bio);
			FUNC4(&tc->deferred_bio_list, &bios);
			FUNC9(&tc->lock, flags);
			break;
		}

		if (bio->bi_rw & BIO_DISCARD)
			pool->process_discard(tc, bio);
		else
			pool->process_bio(tc, bio);
	}
}