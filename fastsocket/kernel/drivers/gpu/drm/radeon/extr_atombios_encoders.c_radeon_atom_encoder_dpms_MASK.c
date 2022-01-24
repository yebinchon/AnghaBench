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
struct radeon_encoder {int encoder_id; int /*<<< orphan*/  active_device; int /*<<< orphan*/  devices; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  ATOM_DISABLE ; 
 int /*<<< orphan*/  ATOM_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  DRM_MODE_DPMS_OFF 146 
#define  DRM_MODE_DPMS_ON 145 
#define  DRM_MODE_DPMS_STANDBY 144 
#define  DRM_MODE_DPMS_SUSPEND 143 
#define  ENCODER_OBJECT_ID_INTERNAL_DAC1 142 
#define  ENCODER_OBJECT_ID_INTERNAL_DAC2 141 
#define  ENCODER_OBJECT_ID_INTERNAL_DDI 140 
#define  ENCODER_OBJECT_ID_INTERNAL_DVO1 139 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1 138 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2 137 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1 136 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_LVTMA 135 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_TMDS1 134 
#define  ENCODER_OBJECT_ID_INTERNAL_LVDS 133 
#define  ENCODER_OBJECT_ID_INTERNAL_LVTM1 132 
#define  ENCODER_OBJECT_ID_INTERNAL_TMDS1 131 
#define  ENCODER_OBJECT_ID_INTERNAL_UNIPHY 130 
#define  ENCODER_OBJECT_ID_INTERNAL_UNIPHY1 129 
#define  ENCODER_OBJECT_ID_INTERNAL_UNIPHY2 128 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*,struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*,int) ; 
 struct drm_encoder* FUNC9 (struct drm_encoder*) ; 
 struct radeon_encoder* FUNC10 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC11(struct drm_encoder *encoder, int mode)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC10(encoder);
	struct drm_encoder *ext_encoder = FUNC9(encoder);

	FUNC2("encoder dpms %d to mode %d, devices %08x, active_devices %08x\n",
		  radeon_encoder->encoder_id, mode, radeon_encoder->devices,
		  radeon_encoder->active_device);
	switch (radeon_encoder->encoder_id) {
	case ENCODER_OBJECT_ID_INTERNAL_TMDS1:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_TMDS1:
	case ENCODER_OBJECT_ID_INTERNAL_LVDS:
	case ENCODER_OBJECT_ID_INTERNAL_LVTM1:
	case ENCODER_OBJECT_ID_INTERNAL_DVO1:
	case ENCODER_OBJECT_ID_INTERNAL_DDI:
	case ENCODER_OBJECT_ID_INTERNAL_DAC2:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2:
		FUNC5(encoder, mode);
		break;
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY:
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY1:
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY2:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_LVTMA:
		FUNC6(encoder, mode);
		break;
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1:
		if (FUNC1(rdev)) {
			switch (mode) {
			case DRM_MODE_DPMS_ON:
				FUNC4(encoder, ATOM_ENABLE);
				break;
			case DRM_MODE_DPMS_STANDBY:
			case DRM_MODE_DPMS_SUSPEND:
			case DRM_MODE_DPMS_OFF:
				FUNC4(encoder, ATOM_DISABLE);
				break;
			}
		} else if (FUNC0(rdev))
			FUNC6(encoder, mode);
		else
			FUNC5(encoder, mode);
		break;
	case ENCODER_OBJECT_ID_INTERNAL_DAC1:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1:
		if (FUNC1(rdev)) {
			switch (mode) {
			case DRM_MODE_DPMS_ON:
				FUNC3(encoder, ATOM_ENABLE);
				break;
			case DRM_MODE_DPMS_STANDBY:
			case DRM_MODE_DPMS_SUSPEND:
			case DRM_MODE_DPMS_OFF:
				FUNC3(encoder, ATOM_DISABLE);
				break;
			}
		} else
			FUNC5(encoder, mode);
		break;
	default:
		return;
	}

	if (ext_encoder)
		FUNC7(encoder, ext_encoder, mode);

	FUNC8(encoder, (mode == DRM_MODE_DPMS_ON) ? true : false);

}