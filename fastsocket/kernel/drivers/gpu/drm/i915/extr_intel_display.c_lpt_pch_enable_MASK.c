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
struct intel_crtc {int cpu_transcoder; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANSCODER_A ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  _TRANS_HBLANK_A ; 
 int /*<<< orphan*/  _TRANS_HSYNC_A ; 
 int /*<<< orphan*/  _TRANS_HTOTAL_A ; 
 int /*<<< orphan*/  _TRANS_VBLANK_A ; 
 int /*<<< orphan*/  _TRANS_VSYNCSHIFT_A ; 
 int /*<<< orphan*/  _TRANS_VSYNC_A ; 
 int /*<<< orphan*/  _TRANS_VTOTAL_A ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_crtc*) ; 
 struct intel_crtc* FUNC12 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC13(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC12(crtc);
	enum transcoder cpu_transcoder = intel_crtc->cpu_transcoder;

	FUNC9(dev_priv, TRANSCODER_A);

	FUNC11(crtc);

	/* Set transcoder timing. */
	FUNC4(_TRANS_HTOTAL_A, FUNC3(FUNC2(cpu_transcoder)));
	FUNC4(_TRANS_HBLANK_A, FUNC3(FUNC0(cpu_transcoder)));
	FUNC4(_TRANS_HSYNC_A,  FUNC3(FUNC1(cpu_transcoder)));

	FUNC4(_TRANS_VTOTAL_A, FUNC3(FUNC8(cpu_transcoder)));
	FUNC4(_TRANS_VBLANK_A, FUNC3(FUNC5(cpu_transcoder)));
	FUNC4(_TRANS_VSYNC_A,  FUNC3(FUNC6(cpu_transcoder)));
	FUNC4(_TRANS_VSYNCSHIFT_A, FUNC3(FUNC7(cpu_transcoder)));

	FUNC10(dev_priv, cpu_transcoder);
}