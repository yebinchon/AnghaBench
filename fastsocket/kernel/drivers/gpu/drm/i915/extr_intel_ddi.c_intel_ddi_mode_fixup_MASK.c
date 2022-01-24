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
struct intel_encoder {int type; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int INTEL_OUTPUT_HDMI ; 
 int INTEL_OUTPUT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct drm_encoder*,struct drm_display_mode const*,struct drm_display_mode*) ; 
 int FUNC2 (struct drm_encoder*,struct drm_display_mode const*,struct drm_display_mode*) ; 
 struct intel_encoder* FUNC3 (struct drm_encoder*) ; 

__attribute__((used)) static bool FUNC4(struct drm_encoder *encoder,
				 const struct drm_display_mode *mode,
				 struct drm_display_mode *adjusted_mode)
{
	struct intel_encoder *intel_encoder = FUNC3(encoder);
	int type = intel_encoder->type;

	FUNC0(type == INTEL_OUTPUT_UNKNOWN, "mode_fixup() on unknown output!\n");

	if (type == INTEL_OUTPUT_HDMI)
		return FUNC2(encoder, mode, adjusted_mode);
	else
		return FUNC1(encoder, mode, adjusted_mode);
}