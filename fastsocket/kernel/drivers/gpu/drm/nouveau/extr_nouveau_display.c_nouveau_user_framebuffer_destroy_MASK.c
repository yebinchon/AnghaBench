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
struct nouveau_framebuffer {TYPE_1__* nvbo; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_framebuffer*) ; 
 struct nouveau_framebuffer* FUNC3 (struct drm_framebuffer*) ; 

__attribute__((used)) static void
FUNC4(struct drm_framebuffer *drm_fb)
{
	struct nouveau_framebuffer *fb = FUNC3(drm_fb);

	if (fb->nvbo)
		FUNC1(fb->nvbo->gem);

	FUNC0(drm_fb);
	FUNC2(fb);
}