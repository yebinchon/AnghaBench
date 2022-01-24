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
struct proc_dir_entry {int dummy; } ;
struct drm_minor {int index; int /*<<< orphan*/  proc_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_PROC_ENTRIES ; 
 int /*<<< orphan*/  drm_proc_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_minor*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

int FUNC3(struct drm_minor *minor, struct proc_dir_entry *root)
{
	char name[64];

	if (!root || !minor->proc_root)
		return 0;

	FUNC0(drm_proc_list, DRM_PROC_ENTRIES, minor);

	FUNC2(name, "%d", minor->index);
	FUNC1(name, root);

	return 0;
}