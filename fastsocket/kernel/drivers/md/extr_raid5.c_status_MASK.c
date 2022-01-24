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
struct seq_file {int dummy; } ;
struct r5conf {int raid_disks; TYPE_2__* disks; } ;
struct mddev {int chunk_sectors; scalar_t__ degraded; int /*<<< orphan*/  layout; int /*<<< orphan*/  level; struct r5conf* private; } ;
struct TYPE_4__ {TYPE_1__* rdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct seq_file *seq, struct mddev *mddev)
{
	struct r5conf *conf = mddev->private;
	int i;

	FUNC0(seq, " level %d, %dk chunk, algorithm %d", mddev->level,
		mddev->chunk_sectors / 2, mddev->layout);
	FUNC0 (seq, " [%d/%d] [", conf->raid_disks, conf->raid_disks - mddev->degraded);
	for (i = 0; i < conf->raid_disks; i++)
		FUNC0 (seq, "%s",
			       conf->disks[i].rdev &&
			       FUNC1(In_sync, &conf->disks[i].rdev->flags) ? "U" : "_");
	FUNC0 (seq, "]");
}