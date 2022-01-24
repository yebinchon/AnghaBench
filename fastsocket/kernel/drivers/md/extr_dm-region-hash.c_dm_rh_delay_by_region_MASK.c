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
struct dm_region_hash {int /*<<< orphan*/  hash_lock; } ;
struct dm_region {int /*<<< orphan*/  delayed_bios; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  region_t ;

/* Variables and functions */
 struct dm_region* FUNC0 (struct dm_region_hash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dm_region_hash *rh,
			   struct bio *bio, region_t region)
{
	struct dm_region *reg;

	/* FIXME: locking. */
	FUNC2(&rh->hash_lock);
	reg = FUNC0(rh, region);
	FUNC1(&reg->delayed_bios, bio);
	FUNC3(&rh->hash_lock);
}