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
struct proc_dir_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct drm_minor {int /*<<< orphan*/ * proc_root; TYPE_1__ proc_nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DRM_PROC_ENTRIES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct drm_minor*) ; 
 int /*<<< orphan*/  drm_proc_list ; 
 int /*<<< orphan*/ * FUNC3 (char*,struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

int FUNC6(struct drm_minor *minor, int minor_id,
		  struct proc_dir_entry *root)
{
	char name[64];
	int ret;

	FUNC1(&minor->proc_nodes.list);
	FUNC5(name, "%d", minor_id);
	minor->proc_root = FUNC3(name, root);
	if (!minor->proc_root) {
		FUNC0("Cannot create /proc/dri/%s\n", name);
		return -1;
	}

	ret = FUNC2(drm_proc_list, DRM_PROC_ENTRIES,
				    minor->proc_root, minor);
	if (ret) {
		FUNC4(name, root);
		minor->proc_root = NULL;
		FUNC0("Failed to create core drm proc files\n");
		return ret;
	}

	return 0;
}