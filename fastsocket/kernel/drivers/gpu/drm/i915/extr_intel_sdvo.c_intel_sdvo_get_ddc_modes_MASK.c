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
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct edid*) ; 
 struct edid* FUNC3 (struct drm_connector*) ; 
 struct edid* FUNC4 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC5 (struct edid*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC7(struct drm_connector *connector)
{
	struct edid *edid;

	/* set the bus switch and get the modes */
	edid = FUNC4(connector);

	/*
	 * Mac mini hack.  On this device, the DVI-I connector shares one DDC
	 * link between analog and digital outputs. So, if the regular SDVO
	 * DDC fails, check to see if the analog output is disconnected, in
	 * which case we'll look there for the digital DDC data.
	 */
	if (edid == NULL)
		edid = FUNC3(connector);

	if (edid != NULL) {
		if (FUNC2(FUNC6(connector),
						      edid)) {
			FUNC1(connector, edid);
			FUNC0(connector, edid);
		}

		FUNC5(edid);
	}
}