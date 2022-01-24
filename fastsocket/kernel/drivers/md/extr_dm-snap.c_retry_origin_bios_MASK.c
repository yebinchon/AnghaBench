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
struct dm_snapshot {int /*<<< orphan*/  origin; } ;
struct bio {struct bio* bi_next; } ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int FUNC0 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 

__attribute__((used)) static void FUNC2(struct dm_snapshot *s, struct bio *bio)
{
	struct bio *n;
	int r;

	while (bio) {
		n = bio->bi_next;
		bio->bi_next = NULL;
		r = FUNC0(s->origin, bio);
		if (r == DM_MAPIO_REMAPPED)
			FUNC1(bio);
		bio = n;
	}
}