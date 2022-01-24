#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {scalar_t__ is_atom_bios; TYPE_1__ mode_info; } ;
struct TYPE_4__ {scalar_t__ num_connectors; struct drm_connector** connectors; int /*<<< orphan*/ * crtc; } ;
struct radeon_crtc {int crtc_id; int* lut_r; int* lut_g; int* lut_b; TYPE_2__ mode_set; int /*<<< orphan*/  base; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RADEONFB_CONN_LIMIT ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct radeon_crtc* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct radeon_crtc*) ; 
 int /*<<< orphan*/  radeon_crtc_funcs ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct radeon_crtc*) ; 
 scalar_t__ radeon_r4xx_atom ; 

__attribute__((used)) static void FUNC6(struct drm_device *dev, int index)
{
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_crtc *radeon_crtc;
	int i;

	radeon_crtc = FUNC3(sizeof(struct radeon_crtc) + (RADEONFB_CONN_LIMIT * sizeof(struct drm_connector *)), GFP_KERNEL);
	if (radeon_crtc == NULL)
		return;

	FUNC1(dev, &radeon_crtc->base, &radeon_crtc_funcs);

	FUNC2(&radeon_crtc->base, 256);
	radeon_crtc->crtc_id = index;
	rdev->mode_info.crtcs[index] = radeon_crtc;

#if 0
	radeon_crtc->mode_set.crtc = &radeon_crtc->base;
	radeon_crtc->mode_set.connectors = (struct drm_connector **)(radeon_crtc + 1);
	radeon_crtc->mode_set.num_connectors = 0;
#endif

	for (i = 0; i < 256; i++) {
		radeon_crtc->lut_r[i] = i << 2;
		radeon_crtc->lut_g[i] = i << 2;
		radeon_crtc->lut_b[i] = i << 2;
	}

	if (rdev->is_atom_bios && (FUNC0(rdev) || radeon_r4xx_atom))
		FUNC4(dev, radeon_crtc);
	else
		FUNC5(dev, radeon_crtc);
}