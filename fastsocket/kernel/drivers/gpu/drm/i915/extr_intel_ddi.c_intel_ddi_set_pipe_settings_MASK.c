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
typedef  int /*<<< orphan*/  uint32_t ;
struct intel_encoder {int type; } ;
struct intel_crtc {int cpu_transcoder; int bpp; } ;
struct drm_i915_private {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int INTEL_OUTPUT_DISPLAYPORT ; 
 int INTEL_OUTPUT_EDP ; 
 int /*<<< orphan*/  TRANS_MSA_10_BPC ; 
 int /*<<< orphan*/  TRANS_MSA_12_BPC ; 
 int /*<<< orphan*/  TRANS_MSA_6_BPC ; 
 int /*<<< orphan*/  TRANS_MSA_8_BPC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TRANS_MSA_SYNC_CLK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 struct intel_encoder* FUNC3 (struct drm_crtc*) ; 
 struct intel_crtc* FUNC4 (struct drm_crtc*) ; 

void FUNC5(struct drm_crtc *crtc)
{
	struct drm_i915_private *dev_priv = crtc->dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC4(crtc);
	struct intel_encoder *intel_encoder = FUNC3(crtc);
	enum transcoder cpu_transcoder = intel_crtc->cpu_transcoder;
	int type = intel_encoder->type;
	uint32_t temp;

	if (type == INTEL_OUTPUT_DISPLAYPORT || type == INTEL_OUTPUT_EDP) {

		temp = TRANS_MSA_SYNC_CLK;
		switch (intel_crtc->bpp) {
		case 18:
			temp |= TRANS_MSA_6_BPC;
			break;
		case 24:
			temp |= TRANS_MSA_8_BPC;
			break;
		case 30:
			temp |= TRANS_MSA_10_BPC;
			break;
		case 36:
			temp |= TRANS_MSA_12_BPC;
			break;
		default:
			temp |= TRANS_MSA_8_BPC;
			FUNC2(1, "%d bpp unsupported by DDI function\n",
			     intel_crtc->bpp);
		}
		FUNC0(FUNC1(cpu_transcoder), temp);
	}
}