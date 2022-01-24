#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct radeon_device {unsigned int debugfs_count; TYPE_2__* ddev; TYPE_1__* debugfs; } ;
struct drm_info_list {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  debugfs_root; } ;
struct TYPE_5__ {TYPE_3__* primary; TYPE_3__* control; } ;
struct TYPE_4__ {unsigned int num_files; struct drm_info_list* files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 unsigned int RADEON_DEBUGFS_MAX_COMPONENTS ; 
 int /*<<< orphan*/  FUNC1 (struct drm_info_list*,unsigned int,int /*<<< orphan*/ ,TYPE_3__*) ; 

int FUNC2(struct radeon_device *rdev,
			     struct drm_info_list *files,
			     unsigned nfiles)
{
	unsigned i;

	for (i = 0; i < rdev->debugfs_count; i++) {
		if (rdev->debugfs[i].files == files) {
			/* Already registered */
			return 0;
		}
	}

	i = rdev->debugfs_count + 1;
	if (i > RADEON_DEBUGFS_MAX_COMPONENTS) {
		FUNC0("Reached maximum number of debugfs components.\n");
		FUNC0("Report so we increase "
		          "RADEON_DEBUGFS_MAX_COMPONENTS.\n");
		return -EINVAL;
	}
	rdev->debugfs[rdev->debugfs_count].files = files;
	rdev->debugfs[rdev->debugfs_count].num_files = nfiles;
	rdev->debugfs_count = i;
#if defined(CONFIG_DEBUG_FS)
	drm_debugfs_create_files(files, nfiles,
				 rdev->ddev->control->debugfs_root,
				 rdev->ddev->control);
	drm_debugfs_create_files(files, nfiles,
				 rdev->ddev->primary->debugfs_root,
				 rdev->ddev->primary);
#endif
	return 0;
}