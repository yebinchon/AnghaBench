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
struct drm_minor {scalar_t__ type; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ DRM_MINOR_LEGACY ; 
 int /*<<< orphan*/  FUNC1 (struct drm_minor*) ; 
 int /*<<< orphan*/  drm_minors_idr ; 
 int /*<<< orphan*/  FUNC2 (struct drm_minor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_proc_root ; 
 int /*<<< orphan*/  FUNC3 (struct drm_minor*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_minor*) ; 

int FUNC6(struct drm_minor **minor_p)
{
	struct drm_minor *minor = *minor_p;

	FUNC0("release secondary minor %d\n", minor->index);

	if (minor->type == DRM_MINOR_LEGACY)
		FUNC2(minor, drm_proc_root);
#if defined(CONFIG_DEBUG_FS)
	drm_debugfs_cleanup(minor);
#endif

	FUNC3(minor);

	FUNC4(&drm_minors_idr, minor->index);

	FUNC5(minor);
	*minor_p = NULL;
	return 0;
}