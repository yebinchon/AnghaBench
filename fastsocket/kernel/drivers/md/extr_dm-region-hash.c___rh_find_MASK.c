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
struct dm_region {int dummy; } ;
typedef  int /*<<< orphan*/  region_t ;

/* Variables and functions */
 struct dm_region* FUNC0 (struct dm_region_hash*,int /*<<< orphan*/ ) ; 
 struct dm_region* FUNC1 (struct dm_region_hash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dm_region *FUNC4(struct dm_region_hash *rh, region_t region)
{
	struct dm_region *reg;

	reg = FUNC1(rh, region);
	if (!reg) {
		FUNC3(&rh->hash_lock);
		reg = FUNC0(rh, region);
		FUNC2(&rh->hash_lock);
	}

	return reg;
}