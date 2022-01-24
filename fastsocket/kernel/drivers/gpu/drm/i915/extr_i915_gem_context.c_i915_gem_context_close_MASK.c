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
struct drm_i915_file_private {int /*<<< orphan*/  context_idr; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  context_idr_cleanup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_device *dev, struct drm_file *file)
{
	struct drm_i915_file_private *file_priv = file->driver_priv;

	FUNC2(&dev->struct_mutex);
	FUNC1(&file_priv->context_idr, context_idr_cleanup, NULL);
	FUNC0(&file_priv->context_idr);
	FUNC3(&dev->struct_mutex);
}