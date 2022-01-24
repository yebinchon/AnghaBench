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
typedef  int u32 ;
struct edid {int features; } ;
struct drm_connector {int /*<<< orphan*/  display_info; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_EDID_FEATURE_DEFAULT_GTF ; 
 int EDID_QUIRK_PREFER_LARGE_60 ; 
 int EDID_QUIRK_PREFER_LARGE_75 ; 
 scalar_t__ FUNC0 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC1 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC2 (struct drm_connector*,struct edid*,int) ; 
 scalar_t__ FUNC3 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC4 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC5 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct edid*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct edid*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_connector*,int) ; 
 int FUNC11 (struct edid*) ; 

int FUNC12(struct drm_connector *connector, struct edid *edid)
{
	int num_modes = 0;
	u32 quirks;

	if (edid == NULL) {
		return 0;
	}
	if (!FUNC8(edid)) {
		FUNC6(connector->dev->dev, "%s: EDID invalid.\n",
			 FUNC9(connector));
		return 0;
	}

	quirks = FUNC11(edid);

	/*
	 * EDID spec says modes should be preferred in this order:
	 * - preferred detailed mode
	 * - other detailed modes from base block
	 * - detailed modes from extension blocks
	 * - CVT 3-byte code modes
	 * - standard timing codes
	 * - established timing codes
	 * - modes inferred from GTF or CVT range information
	 *
	 * We get this pretty much right.
	 *
	 * XXX order for additional mode types in extension blocks?
	 */
	num_modes += FUNC2(connector, edid, quirks);
	num_modes += FUNC1(connector, edid);
	num_modes += FUNC5(connector, edid);
	num_modes += FUNC3(connector, edid);
	if (edid->features & DRM_EDID_FEATURE_DEFAULT_GTF)
		num_modes += FUNC4(connector, edid);
	num_modes += FUNC0(connector, edid);

	if (quirks & (EDID_QUIRK_PREFER_LARGE_60 | EDID_QUIRK_PREFER_LARGE_75))
		FUNC10(connector, quirks);

	FUNC7(edid, &connector->display_info);

	return num_modes;
}