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
struct nouveau_drm {int dummy; } ;
struct nouveau_crtc {int last_dpms; int /*<<< orphan*/  index; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
#define  DRM_MODE_DPMS_OFF 131 
#define  DRM_MODE_DPMS_ON 130 
#define  DRM_MODE_DPMS_STANDBY 129 
#define  DRM_MODE_DPMS_SUSPEND 128 
 int FUNC0 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  NV_CIO_CRE_RPC1_INDEX ; 
 int /*<<< orphan*/  NV_CIO_CR_MODE_INDEX ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_drm*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_VIO_SR_CLOCK_INDEX ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct nouveau_crtc* FUNC8 (struct drm_crtc*) ; 
 struct nouveau_drm* FUNC9 (struct drm_device*) ; 
 scalar_t__ FUNC10 (struct drm_device*) ; 

__attribute__((used)) static void
FUNC11(struct drm_crtc *crtc, int mode)
{
	struct nouveau_crtc *nv_crtc = FUNC8(crtc);
	struct drm_device *dev = crtc->dev;
	struct nouveau_drm *drm = FUNC9(dev);
	unsigned char seq1 = 0, crtc17 = 0;
	unsigned char crtc1A;

	FUNC6(drm, "Setting dpms mode %d on CRTC %d\n", mode,
							nv_crtc->index);

	if (nv_crtc->last_dpms == mode) /* Don't do unnecessary mode changes. */
		return;

	nv_crtc->last_dpms = mode;

	if (FUNC10(dev))
		FUNC2(dev, nv_crtc->index);

	/* nv4ref indicates these two RPC1 bits inhibit h/v sync */
	crtc1A = FUNC0(dev, nv_crtc->index,
					NV_CIO_CRE_RPC1_INDEX) & ~0xC0;
	switch (mode) {
	case DRM_MODE_DPMS_STANDBY:
		/* Screen: Off; HSync: Off, VSync: On -- Not Supported */
		seq1 = 0x20;
		crtc17 = 0x80;
		crtc1A |= 0x80;
		break;
	case DRM_MODE_DPMS_SUSPEND:
		/* Screen: Off; HSync: On, VSync: Off -- Not Supported */
		seq1 = 0x20;
		crtc17 = 0x80;
		crtc1A |= 0x40;
		break;
	case DRM_MODE_DPMS_OFF:
		/* Screen: Off; HSync: Off, VSync: Off */
		seq1 = 0x20;
		crtc17 = 0x00;
		crtc1A |= 0xC0;
		break;
	case DRM_MODE_DPMS_ON:
	default:
		/* Screen: On; HSync: On, VSync: On */
		seq1 = 0x00;
		crtc17 = 0x80;
		break;
	}

	FUNC3(dev, nv_crtc->index, true);
	/* Each head has it's own sequencer, so we can turn it off when we want */
	seq1 |= (FUNC1(dev, nv_crtc->index, NV_VIO_SR_CLOCK_INDEX) & ~0x20);
	FUNC5(dev, nv_crtc->index, NV_VIO_SR_CLOCK_INDEX, seq1);
	crtc17 |= (FUNC0(dev, nv_crtc->index, NV_CIO_CR_MODE_INDEX) & ~0x80);
	FUNC7(10);
	FUNC4(dev, nv_crtc->index, NV_CIO_CR_MODE_INDEX, crtc17);
	FUNC3(dev, nv_crtc->index, false);

	FUNC4(dev, nv_crtc->index, NV_CIO_CRE_RPC1_INDEX, crtc1A);
}