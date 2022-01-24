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
struct origin {int /*<<< orphan*/  snapshots; } ;
struct dm_dev {int /*<<< orphan*/  bdev; } ;
struct bio {int /*<<< orphan*/  bi_sector; } ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 struct origin* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  _origins_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dm_dev *origin, struct bio *bio)
{
	struct origin *o;
	int r = DM_MAPIO_REMAPPED;

	FUNC2(&_origins_lock);
	o = FUNC0(origin->bdev);
	if (o)
		r = FUNC1(&o->snapshots, bio->bi_sector, bio);
	FUNC3(&_origins_lock);

	return r;
}