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
struct mirror_set {int /*<<< orphan*/  rh; } ;
struct mirror {int /*<<< orphan*/  error_count; } ;
struct bio_list {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_sector; } ;
typedef  int /*<<< orphan*/  region_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC2 (struct bio_list*) ; 
 struct mirror* FUNC3 (struct mirror_set*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bio*) ; 
 struct mirror* FUNC5 (struct mirror_set*) ; 
 scalar_t__ FUNC6 (struct mirror*) ; 
 int /*<<< orphan*/  FUNC7 (struct mirror*,struct bio*) ; 
 struct mirror* FUNC8 (struct mirror_set*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct mirror_set *ms, struct bio_list *reads)
{
	region_t region;
	struct bio *bio;
	struct mirror *m;

	while ((bio = FUNC2(reads))) {
		region = FUNC4(ms->rh, bio);
		m = FUNC5(ms);

		/*
		 * We can only read balance if the region is in sync.
		 */
		if (FUNC6(FUNC8(ms, region, 1)))
			m = FUNC3(ms, bio->bi_sector);
		else if (m && FUNC0(&m->error_count))
			m = NULL;

		if (FUNC6(m))
			FUNC7(m, bio);
		else
			FUNC1(bio, -EIO);
	}
}