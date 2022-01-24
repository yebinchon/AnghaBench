#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  raid_devs; } ;
struct TYPE_3__ {int /*<<< orphan*/  wq; } ;
struct raid_set {TYPE_2__ set; TYPE_1__ io; } ;
struct dm_target {struct raid_set* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct raid_set*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dm_target *ti)
{
	struct raid_set *rs = ti->private;

	FUNC1(rs->io.wq);
	FUNC0(rs, rs->set.raid_devs);
}