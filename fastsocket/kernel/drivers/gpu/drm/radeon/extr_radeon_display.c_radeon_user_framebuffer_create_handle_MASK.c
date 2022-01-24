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
struct radeon_framebuffer {int /*<<< orphan*/  obj; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_file*,int /*<<< orphan*/ ,unsigned int*) ; 
 struct radeon_framebuffer* FUNC1 (struct drm_framebuffer*) ; 

__attribute__((used)) static int FUNC2(struct drm_framebuffer *fb,
						  struct drm_file *file_priv,
						  unsigned int *handle)
{
	struct radeon_framebuffer *radeon_fb = FUNC1(fb);

	return FUNC0(file_priv, radeon_fb->obj, handle);
}