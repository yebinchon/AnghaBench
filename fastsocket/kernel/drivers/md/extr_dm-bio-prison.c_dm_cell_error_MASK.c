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
struct dm_bio_prison_cell {int dummy; } ;
struct dm_bio_prison {int /*<<< orphan*/  lock; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_bio_prison_cell*,struct bio_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*) ; 
 struct bio* FUNC3 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct dm_bio_prison *prison,
		   struct dm_bio_prison_cell *cell)
{
	struct bio_list bios;
	struct bio *bio;
	unsigned long flags;

	FUNC2(&bios);

	FUNC4(&prison->lock, flags);
	FUNC0(cell, &bios);
	FUNC5(&prison->lock, flags);

	while ((bio = FUNC3(&bios)))
		FUNC1(bio);
}