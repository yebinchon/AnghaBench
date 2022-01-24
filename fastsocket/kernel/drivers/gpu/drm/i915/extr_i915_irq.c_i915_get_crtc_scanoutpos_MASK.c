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
typedef  int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int DRM_SCANOUTPOS_ACCURATE ; 
 int DRM_SCANOUTPOS_INVBL ; 
 int DRM_SCANOUTPOS_VALID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int PIPE_PIXEL_MASK ; 
 int PIPE_PIXEL_SHIFT ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct drm_device *dev, int pipe,
			     int *vpos, int *hpos)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	u32 vbl = 0, position = 0;
	int vbl_start, vbl_end, htotal, vtotal;
	bool in_vbl = true;
	int ret = 0;
	enum transcoder cpu_transcoder = FUNC9(dev_priv,
								      pipe);

	if (!FUNC8(dev, pipe)) {
		FUNC0("trying to get scanoutpos for disabled "
				 "pipe %c\n", FUNC10(pipe));
		return 0;
	}

	/* Get vtotal. */
	vtotal = 1 + ((FUNC2(FUNC7(cpu_transcoder)) >> 16) & 0x1fff);

	if (FUNC3(dev)->gen >= 4) {
		/* No obvious pixelcount register. Only query vertical
		 * scanout position from Display scan line register.
		 */
		position = FUNC2(FUNC4(pipe));

		/* Decode into vertical scanout position. Don't have
		 * horizontal scanout position.
		 */
		*vpos = position & 0x1fff;
		*hpos = 0;
	} else {
		/* Have access to pixelcount since start of frame.
		 * We can split this into vertical and horizontal
		 * scanout position.
		 */
		position = (FUNC2(FUNC5(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;

		htotal = 1 + ((FUNC2(FUNC1(cpu_transcoder)) >> 16) & 0x1fff);
		*vpos = position / htotal;
		*hpos = position - (*vpos * htotal);
	}

	/* Query vblank area. */
	vbl = FUNC2(FUNC6(cpu_transcoder));

	/* Test position against vblank region. */
	vbl_start = vbl & 0x1fff;
	vbl_end = (vbl >> 16) & 0x1fff;

	if ((*vpos < vbl_start) || (*vpos > vbl_end))
		in_vbl = false;

	/* Inside "upper part" of vblank area? Apply corrective offset: */
	if (in_vbl && (*vpos >= vbl_start))
		*vpos = *vpos - vtotal;

	/* Readouts valid? */
	if (vbl > 0)
		ret |= DRM_SCANOUTPOS_VALID | DRM_SCANOUTPOS_ACCURATE;

	/* In vblank? */
	if (in_vbl)
		ret |= DRM_SCANOUTPOS_INVBL;

	return ret;
}