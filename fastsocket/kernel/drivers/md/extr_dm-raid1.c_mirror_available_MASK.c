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
struct mirror_set {int /*<<< orphan*/  rh; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct bio {int /*<<< orphan*/  bi_sector; } ;
typedef  int /*<<< orphan*/  region_t ;
struct TYPE_2__ {scalar_t__ (* in_sync ) (struct dm_dirty_log*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mirror_set*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bio*) ; 
 struct dm_dirty_log* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct dm_dirty_log*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mirror_set *ms, struct bio *bio)
{
	struct dm_dirty_log *log = FUNC2(ms->rh);
	region_t region = FUNC1(ms->rh, bio);

	if (log->type->in_sync(log, region, 0))
		return FUNC0(ms,  bio->bi_sector) ? 1 : 0;

	return 0;
}