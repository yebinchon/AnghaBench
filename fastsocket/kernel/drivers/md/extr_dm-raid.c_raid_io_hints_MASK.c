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
struct TYPE_2__ {int chunk_sectors; struct r5conf* private; } ;
struct raid_set {TYPE_1__ md; } ;
struct r5conf {unsigned int raid_disks; unsigned int max_degraded; } ;
struct queue_limits {int dummy; } ;
struct dm_target {struct raid_set* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct queue_limits*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct queue_limits*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct dm_target *ti, struct queue_limits *limits)
{
	struct raid_set *rs = ti->private;
	unsigned chunk_size = rs->md.chunk_sectors << 9;
	struct r5conf *conf = rs->md.private;

	FUNC0(limits, chunk_size);
	FUNC1(limits, chunk_size * (conf->raid_disks - conf->max_degraded));
}