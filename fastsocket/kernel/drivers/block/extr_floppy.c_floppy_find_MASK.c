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
struct kobject {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {scalar_t__ version; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int) ; 
 scalar_t__ FDC_NONE ; 
 int N_DRIVE ; 
 int allowed_drive_mask ; 
 int /*<<< orphan*/ * disks ; 
 TYPE_1__* fdc_state ; 
 int /*<<< orphan*/  floppy_type ; 
 struct kobject* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct kobject *FUNC3(dev_t dev, int *part, void *data)
{
	int drive = (*part & 3) | ((*part & 0x80) >> 5);
	if (drive >= N_DRIVE ||
	    !(allowed_drive_mask & (1 << drive)) ||
	    fdc_state[FUNC1(drive)].version == FDC_NONE)
		return NULL;
	if (((*part >> 2) & 0x1f) >= FUNC0(floppy_type))
		return NULL;
	*part = 0;
	return FUNC2(disks[drive]);
}