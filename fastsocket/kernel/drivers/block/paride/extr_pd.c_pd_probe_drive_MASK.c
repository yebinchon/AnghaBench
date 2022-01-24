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
struct pd_unit {int drive; struct gendisk* gd; int /*<<< orphan*/  name; } ;
struct gendisk {int first_minor; int /*<<< orphan*/  queue; struct pd_unit* private_data; int /*<<< orphan*/  major; int /*<<< orphan*/ * fops; int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int PD_BITS ; 
 struct gendisk* FUNC0 (int) ; 
 int /*<<< orphan*/  major ; 
 struct pd_unit* pd ; 
 int /*<<< orphan*/  pd_fops ; 
 int /*<<< orphan*/  pd_identify ; 
 int /*<<< orphan*/  pd_queue ; 
 scalar_t__ FUNC1 (struct pd_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pd_unit *disk)
{
	struct gendisk *p = FUNC0(1 << PD_BITS);
	if (!p)
		return;
	FUNC3(p->disk_name, disk->name);
	p->fops = &pd_fops;
	p->major = major;
	p->first_minor = (disk - pd) << PD_BITS;
	disk->gd = p;
	p->private_data = disk;
	p->queue = pd_queue;

	if (disk->drive == -1) {
		for (disk->drive = 0; disk->drive <= 1; disk->drive++)
			if (FUNC1(disk, pd_identify) == 0)
				return;
	} else if (FUNC1(disk, pd_identify) == 0)
		return;
	disk->gd = NULL;
	FUNC2(p);
}