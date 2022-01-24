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
struct intel_crtc {int* lut_r; int* lut_g; int* lut_b; int pipe; int plane; int cpu_transcoder; int bpp; int /*<<< orphan*/  base; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** pipe_to_crtc_mapping; int /*<<< orphan*/ ** plane_to_crtc_mapping; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INTELFB_CONN_LIMIT ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  intel_crtc_funcs ; 
 int /*<<< orphan*/  intel_helper_funcs ; 
 struct intel_crtc* FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct drm_device *dev, int pipe)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc;
	int i;

	intel_crtc = FUNC8(sizeof(struct intel_crtc) + (INTELFB_CONN_LIMIT * sizeof(struct drm_connector *)), GFP_KERNEL);
	if (intel_crtc == NULL)
		return;

	FUNC6(dev, &intel_crtc->base, &intel_crtc_funcs);

	FUNC7(&intel_crtc->base, 256);
	for (i = 0; i < 256; i++) {
		intel_crtc->lut_r[i] = i;
		intel_crtc->lut_g[i] = i;
		intel_crtc->lut_b[i] = i;
	}

	/* Swap pipes & planes for FBC on pre-965 */
	intel_crtc->pipe = pipe;
	intel_crtc->plane = pipe;
	intel_crtc->cpu_transcoder = pipe;
	if (FUNC4(dev) && FUNC3(dev)) {
		FUNC2("swapping pipes & planes for FBC\n");
		intel_crtc->plane = !pipe;
	}

	FUNC1(pipe >= FUNC0(dev_priv->plane_to_crtc_mapping) ||
	       dev_priv->plane_to_crtc_mapping[intel_crtc->plane] != NULL);
	dev_priv->plane_to_crtc_mapping[intel_crtc->plane] = &intel_crtc->base;
	dev_priv->pipe_to_crtc_mapping[intel_crtc->pipe] = &intel_crtc->base;

	intel_crtc->bpp = 24; /* default for pre-Ironlake */

	FUNC5(&intel_crtc->base, &intel_helper_funcs);
}