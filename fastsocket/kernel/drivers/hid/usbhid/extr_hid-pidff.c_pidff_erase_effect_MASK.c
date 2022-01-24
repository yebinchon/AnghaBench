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
struct pidff_device {int* pid_id; int /*<<< orphan*/  hid; } ;
struct input_dev {TYPE_1__* ff; } ;
struct TYPE_2__ {struct pidff_device* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pidff_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pidff_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev, int effect_id)
{
	struct pidff_device *pidff = dev->ff->private;
	int pid_id = pidff->pid_id[effect_id];

	FUNC0("starting to erase %d/%d", effect_id, pidff->pid_id[effect_id]);
	/* Wait for the queue to clear. We do not want a full fifo to
	   prevent the effect removal. */
	FUNC3(pidff->hid);
	FUNC2(pidff, pid_id, 0);
	FUNC1(pidff, pid_id);

	return 0;
}