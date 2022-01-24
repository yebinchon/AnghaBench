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
struct gendisk {struct ace_device* private_data; } ;
struct ace_device {int id_result; int /*<<< orphan*/  dev; int /*<<< orphan*/  id_completion; int /*<<< orphan*/  fsm_tasklet; int /*<<< orphan*/  lock; int /*<<< orphan*/  id_req_count; scalar_t__ media_change; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gendisk *gd)
{
	struct ace_device *ace = gd->private_data;
	unsigned long flags;

	FUNC0(ace->dev, "ace_revalidate_disk()\n");

	if (ace->media_change) {
		FUNC0(ace->dev, "requesting cf id and scheduling tasklet\n");

		FUNC1(&ace->lock, flags);
		ace->id_req_count++;
		FUNC2(&ace->lock, flags);

		FUNC3(&ace->fsm_tasklet);
		FUNC4(&ace->id_completion);
	}

	FUNC0(ace->dev, "revalidate complete\n");
	return ace->id_result;
}