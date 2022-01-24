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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/ * b; int /*<<< orphan*/ * g; int /*<<< orphan*/ * r; } ;
struct nouveau_crtc {TYPE_1__ lut; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 struct nouveau_crtc* FUNC0 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC1(struct drm_crtc *crtc, u16 *red, u16 *green,
				    u16 *blue, int regno)
{
	struct nouveau_crtc *nv_crtc = FUNC0(crtc);

	*red = nv_crtc->lut.r[regno];
	*green = nv_crtc->lut.g[regno];
	*blue = nv_crtc->lut.b[regno];
}