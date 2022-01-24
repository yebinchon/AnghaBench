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
struct pool {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_list*) ; 
 struct bio* FUNC2 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct pool*,struct dm_bio_prison_cell*) ; 
 int /*<<< orphan*/  FUNC4 (struct pool*,struct dm_bio_prison_cell*,struct bio_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 scalar_t__ FUNC6 (struct pool*) ; 

__attribute__((used)) static void FUNC7(struct pool *pool, struct dm_bio_prison_cell *cell)
{
	struct bio *bio;
	struct bio_list bios;

	if (FUNC6(pool)) {
		FUNC3(pool, cell);
		return;
	}

	FUNC1(&bios);
	FUNC4(pool, cell, &bios);

	if (FUNC6(pool))
		while ((bio = FUNC2(&bios)))
			FUNC0(bio);
	else
		while ((bio = FUNC2(&bios)))
			FUNC5(bio);
}