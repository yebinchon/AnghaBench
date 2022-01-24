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
struct intel_ring_buffer {int gpu_caches_dirty; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_ring_buffer*,struct drm_file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct drm_device *dev,
				    struct drm_file *file,
				    struct intel_ring_buffer *ring)
{
	/* Unconditionally force add_request to emit a full flush. */
	ring->gpu_caches_dirty = true;

	/* Add a breadcrumb for the completion of the batch buffer */
	(void)FUNC0(ring, file, NULL);
}