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
struct dm_bio_prison_cell {int /*<<< orphan*/  list; int /*<<< orphan*/  bios; struct bio* holder; int /*<<< orphan*/  key; } ;
struct dm_bio_prison {scalar_t__ cells; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct dm_cell_key*,int) ; 

__attribute__((used)) static void FUNC3(struct dm_bio_prison *prison,
			     struct dm_cell_key *key,
			     struct bio *holder,
			     uint32_t hash,
			     struct dm_bio_prison_cell *cell)
{
	FUNC2(&cell->key, key, sizeof(cell->key));
	cell->holder = holder;
	FUNC0(&cell->bios);
	FUNC1(&cell->list, prison->cells + hash);
}