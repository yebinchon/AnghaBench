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
typedef  int u32 ;
struct intel_framebuffer {struct drm_i915_gem_object* obj; } ;
struct intel_crtc {int /*<<< orphan*/  plane; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {int fence_reg; int gtt_offset; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int y; struct drm_framebuffer* fb; struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPFC_CPU_FENCE_OFFSET ; 
 int DPFC_CTL_EN ; 
 int DPFC_CTL_FENCE_EN ; 
 int DPFC_CTL_LIMIT_1X ; 
 int DPFC_CTL_PERSISTENT_MODE ; 
 int DPFC_CTL_PLANEA ; 
 int DPFC_CTL_PLANEB ; 
 int DPFC_HT_MODIFY ; 
 unsigned long DPFC_RECOMP_STALL_EN ; 
 unsigned long DPFC_RECOMP_STALL_WM_SHIFT ; 
 unsigned long DPFC_RECOMP_TIMER_COUNT_SHIFT ; 
 int DPFC_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ILK_DPFC_CHICKEN ; 
 int /*<<< orphan*/  ILK_DPFC_CONTROL ; 
 int /*<<< orphan*/  ILK_DPFC_FENCE_YOFF ; 
 int /*<<< orphan*/  ILK_DPFC_RECOMP_CTL ; 
 int /*<<< orphan*/  ILK_FBC_RT_BASE ; 
 int ILK_FBC_RT_VALID ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int SNB_CPU_FENCE_ENABLE ; 
 int /*<<< orphan*/  SNB_DPFC_CTL_SA ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 struct intel_crtc* FUNC5 (struct drm_crtc*) ; 
 struct intel_framebuffer* FUNC6 (struct drm_framebuffer*) ; 

__attribute__((used)) static void FUNC7(struct drm_crtc *crtc, unsigned long interval)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct drm_framebuffer *fb = crtc->fb;
	struct intel_framebuffer *intel_fb = FUNC6(fb);
	struct drm_i915_gem_object *obj = intel_fb->obj;
	struct intel_crtc *intel_crtc = FUNC5(crtc);
	int plane = intel_crtc->plane == 0 ? DPFC_CTL_PLANEA : DPFC_CTL_PLANEB;
	unsigned long stall_watermark = 200;
	u32 dpfc_ctl;

	dpfc_ctl = FUNC1(ILK_DPFC_CONTROL);
	dpfc_ctl &= DPFC_RESERVED;
	dpfc_ctl |= (plane | DPFC_CTL_LIMIT_1X);
	/* Set persistent mode for front-buffer rendering, ala X. */
	dpfc_ctl |= DPFC_CTL_PERSISTENT_MODE;
	dpfc_ctl |= (DPFC_CTL_FENCE_EN | obj->fence_reg);
	FUNC2(ILK_DPFC_CHICKEN, DPFC_HT_MODIFY);

	FUNC2(ILK_DPFC_RECOMP_CTL, DPFC_RECOMP_STALL_EN |
		   (stall_watermark << DPFC_RECOMP_STALL_WM_SHIFT) |
		   (interval << DPFC_RECOMP_TIMER_COUNT_SHIFT));
	FUNC2(ILK_DPFC_FENCE_YOFF, crtc->y);
	FUNC2(ILK_FBC_RT_BASE, obj->gtt_offset | ILK_FBC_RT_VALID);
	/* enable it... */
	FUNC2(ILK_DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);

	if (FUNC3(dev)) {
		FUNC2(SNB_DPFC_CTL_SA,
			   SNB_CPU_FENCE_ENABLE | obj->fence_reg);
		FUNC2(DPFC_CPU_FENCE_OFFSET, crtc->y);
		FUNC4(dev);
	}

	FUNC0("enabled fbc on plane %d\n", intel_crtc->plane);
}