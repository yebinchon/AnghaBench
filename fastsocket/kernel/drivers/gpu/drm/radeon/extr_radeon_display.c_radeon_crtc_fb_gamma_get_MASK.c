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
typedef  int u16 ;
struct radeon_crtc {int* lut_r; int* lut_g; int* lut_b; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 struct radeon_crtc* FUNC0 (struct drm_crtc*) ; 

void FUNC1(struct drm_crtc *crtc, u16 *red, u16 *green,
			      u16 *blue, int regno)
{
	struct radeon_crtc *radeon_crtc = FUNC0(crtc);

	*red = radeon_crtc->lut_r[regno] << 6;
	*green = radeon_crtc->lut_g[regno] << 6;
	*blue = radeon_crtc->lut_b[regno] << 6;
}