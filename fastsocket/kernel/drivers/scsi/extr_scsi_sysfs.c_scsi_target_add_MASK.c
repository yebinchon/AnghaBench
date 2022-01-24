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
struct scsi_target {scalar_t__ state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ STARGET_CREATED ; 
 scalar_t__ STARGET_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_target*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct scsi_target *starget)
{
	int error;

	if (starget->state != STARGET_CREATED)
		return 0;

	error = FUNC1(&starget->dev);
	if (error) {
		FUNC0(&starget->dev, "target device_add failed, error %d\n", error);
		FUNC2(&starget->dev);
		FUNC4(starget);
		FUNC3(&starget->dev);
		return error;
	}
	FUNC5(&starget->dev);
	starget->state = STARGET_RUNNING;

	return 0;
}