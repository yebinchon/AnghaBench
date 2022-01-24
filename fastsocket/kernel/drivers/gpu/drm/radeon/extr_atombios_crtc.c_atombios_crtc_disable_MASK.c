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
struct TYPE_4__ {TYPE_1__** crtcs; } ;
struct radeon_device {int num_crtc; TYPE_2__ mode_info; } ;
struct radeon_crtc {int crtc_id; int pll_id; int /*<<< orphan*/ * connector; int /*<<< orphan*/ * encoder; scalar_t__ adjusted_clock; } ;
struct radeon_atom_ss {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_3__ {int pll_id; scalar_t__ enabled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  ATOM_DISABLE ; 
 int /*<<< orphan*/  ATOM_ENABLE ; 
#define  ATOM_PPLL0 130 
#define  ATOM_PPLL1 129 
#define  ATOM_PPLL2 128 
 int ATOM_PPLL_INVALID ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct radeon_atom_ss*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 struct radeon_crtc* FUNC5 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc)
{
	struct radeon_crtc *radeon_crtc = FUNC5(crtc);
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_atom_ss ss;
	int i;

	FUNC2(crtc, DRM_MODE_DPMS_OFF);
	if (FUNC0(rdev))
		FUNC4(crtc, ATOM_ENABLE);

	for (i = 0; i < rdev->num_crtc; i++) {
		if (rdev->mode_info.crtcs[i] &&
		    rdev->mode_info.crtcs[i]->enabled &&
		    i != radeon_crtc->crtc_id &&
		    radeon_crtc->pll_id == rdev->mode_info.crtcs[i]->pll_id) {
			/* one other crtc is using this pll don't turn
			 * off the pll
			 */
			goto done;
		}
	}

	switch (radeon_crtc->pll_id) {
	case ATOM_PPLL1:
	case ATOM_PPLL2:
		/* disable the ppll */
		FUNC3(crtc, radeon_crtc->crtc_id, radeon_crtc->pll_id,
					  0, 0, ATOM_DISABLE, 0, 0, 0, 0, 0, false, &ss);
		break;
	case ATOM_PPLL0:
		/* disable the ppll */
		if (FUNC1(rdev))
			FUNC3(crtc, radeon_crtc->crtc_id, radeon_crtc->pll_id,
						  0, 0, ATOM_DISABLE, 0, 0, 0, 0, 0, false, &ss);
		break;
	default:
		break;
	}
done:
	radeon_crtc->pll_id = ATOM_PPLL_INVALID;
	radeon_crtc->adjusted_clock = 0;
	radeon_crtc->encoder = NULL;
	radeon_crtc->connector = NULL;
}