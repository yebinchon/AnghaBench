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
struct intel_sdvo {int /*<<< orphan*/  is_hdmi; } ;
struct edid {int input; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int DRM_EDID_INPUT_DIGITAL ; 
 int FUNC0 (struct edid*) ; 
 struct intel_sdvo* FUNC1 (struct drm_connector*) ; 
 struct edid* FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct edid*) ; 

__attribute__((used)) static bool FUNC4(struct drm_connector *connector)
{
	struct intel_sdvo *intel_sdvo = FUNC1(connector);
	struct edid *edid;
	bool has_audio = false;

	if (!intel_sdvo->is_hdmi)
		return false;

	edid = FUNC2(connector);
	if (edid != NULL && edid->input & DRM_EDID_INPUT_DIGITAL)
		has_audio = FUNC0(edid);
	FUNC3(edid);

	return has_audio;
}