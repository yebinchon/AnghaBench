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
struct ubi_volume_info {scalar_t__ vol_type; int /*<<< orphan*/  used_bytes; int /*<<< orphan*/  vol_id; int /*<<< orphan*/  ubi_num; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct gluebi_device {TYPE_1__ mtd; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ UBI_STATIC_VOLUME ; 
 int /*<<< orphan*/  devices_mutex ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gluebi_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ubi_volume_info *vi)
{
	struct gluebi_device *gluebi;

	FUNC2(&devices_mutex);
	gluebi = FUNC1(vi->ubi_num, vi->vol_id);
	if (!gluebi) {
		FUNC3(&devices_mutex);
		FUNC0("got update notification for unknown UBI device %d "
			"volume %d", vi->ubi_num, vi->vol_id);
		return -ENOENT;
	}

	if (vi->vol_type == UBI_STATIC_VOLUME)
		gluebi->mtd.size = vi->used_bytes;
	FUNC3(&devices_mutex);
	return 0;
}