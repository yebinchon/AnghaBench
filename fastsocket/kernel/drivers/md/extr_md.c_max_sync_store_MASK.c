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
struct mddev {unsigned long long resync_max; unsigned long long resync_min; scalar_t__ ro; int /*<<< orphan*/  recovery_wait; scalar_t__ chunk_sectors; int /*<<< orphan*/  recovery; } ;
typedef  size_t ssize_t ;
typedef  unsigned long long sector_t ;

/* Variables and functions */
 size_t EBUSY ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  MD_RECOVERY_RUNNING ; 
 unsigned long long MaxSector ; 
 scalar_t__ FUNC0 (char const*,int,unsigned long long*) ; 
 scalar_t__ FUNC1 (unsigned long long,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC5(struct mddev *mddev, const char *buf, size_t len)
{
	if (FUNC2(buf, "max", 3) == 0)
		mddev->resync_max = MaxSector;
	else {
		unsigned long long max;
		if (FUNC0(buf, 10, &max))
			return -EINVAL;
		if (max < mddev->resync_min)
			return -EINVAL;
		if (max < mddev->resync_max &&
		    mddev->ro == 0 &&
		    FUNC3(MD_RECOVERY_RUNNING, &mddev->recovery))
			return -EBUSY;

		/* Must be a multiple of chunk_size */
		if (mddev->chunk_sectors) {
			sector_t temp = max;
			if (FUNC1(temp, mddev->chunk_sectors))
				return -EINVAL;
		}
		mddev->resync_max = max;
	}
	FUNC4(&mddev->recovery_wait);
	return len;
}