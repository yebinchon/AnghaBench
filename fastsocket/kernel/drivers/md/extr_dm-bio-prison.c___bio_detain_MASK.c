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
typedef  scalar_t__ uint32_t ;
struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int /*<<< orphan*/  bios; } ;
struct dm_bio_prison {scalar_t__ cells; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 struct dm_bio_prison_cell* FUNC0 (scalar_t__,struct dm_cell_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_bio_prison*,struct dm_cell_key*,struct bio*,scalar_t__,struct dm_bio_prison_cell*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 scalar_t__ FUNC3 (struct dm_bio_prison*,struct dm_cell_key*) ; 

__attribute__((used)) static int FUNC4(struct dm_bio_prison *prison,
			struct dm_cell_key *key,
			struct bio *inmate,
			struct dm_bio_prison_cell *cell_prealloc,
			struct dm_bio_prison_cell **cell_result)
{
	uint32_t hash = FUNC3(prison, key);
	struct dm_bio_prison_cell *cell;

	cell = FUNC0(prison->cells + hash, key);
	if (cell) {
		if (inmate)
			FUNC2(&cell->bios, inmate);
		*cell_result = cell;
		return 1;
	}

	FUNC1(prison, key, inmate, hash, cell_prealloc);
	*cell_result = cell_prealloc;
	return 0;
}