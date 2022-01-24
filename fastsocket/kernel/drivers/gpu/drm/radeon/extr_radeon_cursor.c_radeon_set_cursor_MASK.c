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
typedef  int uint64_t ;
struct radeon_device {scalar_t__ family; } ;
struct radeon_crtc {int legacy_cursor_offset; int legacy_display_base_addr; scalar_t__ crtc_offset; scalar_t__ crtc_id; } ;
struct drm_gem_object {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 scalar_t__ AVIVO_D1CUR_SURFACE_ADDRESS ; 
 scalar_t__ CHIP_RV770 ; 
 scalar_t__ EVERGREEN_CUR_SURFACE_ADDRESS ; 
 scalar_t__ EVERGREEN_CUR_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ R700_D1CUR_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ R700_D2CUR_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ RADEON_CUR_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 struct radeon_crtc* FUNC3 (struct drm_crtc*) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct drm_crtc *crtc, struct drm_gem_object *obj,
			      uint64_t gpu_addr)
{
	struct radeon_crtc *radeon_crtc = FUNC3(crtc);
	struct radeon_device *rdev = crtc->dev->dev_private;

	if (FUNC1(rdev)) {
		FUNC2(EVERGREEN_CUR_SURFACE_ADDRESS_HIGH + radeon_crtc->crtc_offset,
		       FUNC4(gpu_addr));
		FUNC2(EVERGREEN_CUR_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
		       gpu_addr & 0xffffffff);
	} else if (FUNC0(rdev)) {
		if (rdev->family >= CHIP_RV770) {
			if (radeon_crtc->crtc_id)
				FUNC2(R700_D2CUR_SURFACE_ADDRESS_HIGH, FUNC4(gpu_addr));
			else
				FUNC2(R700_D1CUR_SURFACE_ADDRESS_HIGH, FUNC4(gpu_addr));
		}
		FUNC2(AVIVO_D1CUR_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
		       gpu_addr & 0xffffffff);
	} else {
		radeon_crtc->legacy_cursor_offset = gpu_addr - radeon_crtc->legacy_display_base_addr;
		/* offset is from DISP(2)_BASE_ADDRESS */
		FUNC2(RADEON_CUR_OFFSET + radeon_crtc->crtc_offset, radeon_crtc->legacy_cursor_offset);
	}
}