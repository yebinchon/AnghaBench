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
struct pd_unit {scalar_t__ removable; int /*<<< orphan*/  access; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {struct pd_unit* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  pd_door_lock ; 
 int /*<<< orphan*/  pd_media_check ; 
 int /*<<< orphan*/  FUNC0 (struct pd_unit*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct block_device *bdev, fmode_t mode)
{
	struct pd_unit *disk = bdev->bd_disk->private_data;

	disk->access++;

	if (disk->removable) {
		FUNC0(disk, pd_media_check);
		FUNC0(disk, pd_door_lock);
	}
	return 0;
}