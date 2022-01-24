#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct dm_rh_client* rh; } ;
struct raid_set {TYPE_1__ recover; } ;
struct dm_rh_client {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  region_t ;
typedef  enum dm_rh_region_states { ____Placeholder_dm_rh_region_states } dm_rh_region_states ;

/* Variables and functions */
 int FUNC0 (struct dm_rh_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_rh_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct raid_set *rs, sector_t sector,
			enum dm_rh_region_states state)
{
	struct dm_rh_client *rh = rs->recover.rh;
	region_t region = FUNC1(rh, sector);

	return !!(FUNC0(rh, region, 1) & state);
}