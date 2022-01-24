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
struct TYPE_3__ {int raid_disks; } ;
struct raid_set {TYPE_2__* dev; int /*<<< orphan*/  ti; TYPE_1__ md; } ;
struct TYPE_4__ {scalar_t__ data_dev; int /*<<< orphan*/  rdev; scalar_t__ meta_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct raid_set *rs)
{
	int i;

	for (i = 0; i < rs->md.raid_disks; i++) {
		if (rs->dev[i].meta_dev)
			FUNC0(rs->ti, rs->dev[i].meta_dev);
		FUNC2(&rs->dev[i].rdev);
		if (rs->dev[i].data_dev)
			FUNC0(rs->ti, rs->dev[i].data_dev);
	}

	FUNC1(rs);
}