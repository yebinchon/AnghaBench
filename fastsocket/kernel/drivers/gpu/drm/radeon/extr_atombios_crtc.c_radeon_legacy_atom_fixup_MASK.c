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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int crtc_id; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_CRTC2_H_SYNC_STRT_WID ; 
 int /*<<< orphan*/  RADEON_CRTC2_V_SYNC_STRT_WID ; 
 int /*<<< orphan*/  RADEON_DISP2_MERGE_CNTL ; 
 int /*<<< orphan*/  RADEON_DISP2_RGB_OFFSET_EN ; 
 int /*<<< orphan*/  RADEON_DISP_MERGE_CNTL ; 
 int /*<<< orphan*/  RADEON_DISP_RGB_OFFSET_EN ; 
 int /*<<< orphan*/  RADEON_FP_H2_SYNC_STRT_WID ; 
 int /*<<< orphan*/  RADEON_FP_V2_SYNC_STRT_WID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct radeon_crtc* FUNC2 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_crtc *radeon_crtc = FUNC2(crtc);
	u32 disp_merge_cntl;

	switch (radeon_crtc->crtc_id) {
	case 0:
		disp_merge_cntl = FUNC0(RADEON_DISP_MERGE_CNTL);
		disp_merge_cntl &= ~RADEON_DISP_RGB_OFFSET_EN;
		FUNC1(RADEON_DISP_MERGE_CNTL, disp_merge_cntl);
		break;
	case 1:
		disp_merge_cntl = FUNC0(RADEON_DISP2_MERGE_CNTL);
		disp_merge_cntl &= ~RADEON_DISP2_RGB_OFFSET_EN;
		FUNC1(RADEON_DISP2_MERGE_CNTL, disp_merge_cntl);
		FUNC1(RADEON_FP_H2_SYNC_STRT_WID,   FUNC0(RADEON_CRTC2_H_SYNC_STRT_WID));
		FUNC1(RADEON_FP_V2_SYNC_STRT_WID,   FUNC0(RADEON_CRTC2_V_SYNC_STRT_WID));
		break;
	}
}