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
struct thin_c {int dummy; } ;
struct bio_list {int dummy; } ;
struct pool {int /*<<< orphan*/  last_commit_jiffies; int /*<<< orphan*/  pmd; int /*<<< orphan*/  lock; struct bio_list deferred_flush_bios; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_list*,struct bio_list*) ; 
 struct bio* FUNC4 (struct bio_list*) ; 
 scalar_t__ FUNC5 (struct pool*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 struct thin_c* FUNC8 (struct pool*) ; 
 struct thin_c* FUNC9 (struct pool*,struct thin_c*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC10 (struct pool*) ; 
 int /*<<< orphan*/  FUNC11 (struct thin_c*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC14(struct pool *pool)
{
	unsigned long flags;
	struct bio *bio;
	struct bio_list bios;
	struct thin_c *tc;

	tc = FUNC8(pool);
	while (tc) {
		FUNC11(tc);
		tc = FUNC9(pool, tc);
	}

	/*
	 * If there are any deferred flush bios, we must commit
	 * the metadata before issuing them.
	 */
	FUNC2(&bios);
	FUNC12(&pool->lock, flags);
	FUNC3(&bios, &pool->deferred_flush_bios);
	FUNC2(&pool->deferred_flush_bios);
	FUNC13(&pool->lock, flags);

	if (FUNC1(&bios) &&
	    !(FUNC6(pool->pmd) && FUNC10(pool)))
		return;

	if (FUNC5(pool)) {
		while ((bio = FUNC4(&bios)))
			FUNC0(bio);
		return;
	}
	pool->last_commit_jiffies = jiffies;

	while ((bio = FUNC4(&bios)))
		FUNC7(bio);
}