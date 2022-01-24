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
struct nouveau_crtc {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef  enum mode_set_atomic { ____Placeholder_mode_set_atomic } mode_set_atomic ;

/* Variables and functions */
 struct nouveau_crtc* FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_crtc*,struct drm_framebuffer*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 

__attribute__((used)) static int
FUNC3(struct drm_crtc *crtc,
			       struct drm_framebuffer *fb, int x, int y,
			       enum mode_set_atomic state)
{
	struct nouveau_crtc *nv_crtc = FUNC0(crtc);
	FUNC2(crtc);
	FUNC1(nv_crtc, fb, x, y, true);
	return 0;
}