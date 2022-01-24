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
typedef  size_t uint32_t ;
typedef  size_t u32 ;
typedef  void* u16 ;
struct TYPE_2__ {void** b; void** g; void** r; } ;
struct nouveau_crtc {TYPE_1__ lut; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 struct nouveau_crtc* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 

__attribute__((used)) static void
FUNC3(struct drm_crtc *crtc, u16 *r, u16 *g, u16 *b,
		    uint32_t start, uint32_t size)
{
	struct nouveau_crtc *nv_crtc = FUNC1(crtc);
	u32 end = FUNC0(start + size, (u32)256);
	u32 i;

	for (i = start; i < end; i++) {
		nv_crtc->lut.r[i] = r[i];
		nv_crtc->lut.g[i] = g[i];
		nv_crtc->lut.b[i] = b[i];
	}

	FUNC2(crtc);
}