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
 scalar_t__ FUNC0 (struct edid*) ; 
 int FUNC1 (struct drm_connector*,struct edid*) ; 
 char* FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct edid*) ; 
 char* edid_firmware ; 
 scalar_t__ FUNC4 (struct drm_connector*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct edid*) ; 
 char* FUNC6 (char*,char) ; 
 int FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

int FUNC9(struct drm_connector *connector)
{
	char *connector_name = FUNC2(connector);
	char *edidname = edid_firmware, *last, *colon;
	int ret;
	struct edid *edid;

	if (*edidname == '\0')
		return 0;

	colon = FUNC6(edidname, ':');
	if (colon != NULL) {
		if (FUNC8(connector_name, edidname, colon - edidname))
			return 0;
		edidname = colon + 1;
		if (*edidname == '\0')
			return 0;
	}

	last = edidname + FUNC7(edidname) - 1;
	if (*last == '\n')
		*last = '\0';

	edid = (struct edid *) FUNC4(connector, edidname, connector_name);
	if (FUNC0(edid))
		return 0;

	FUNC3(connector, edid);
	ret = FUNC1(connector, edid);
	FUNC5(edid);

	return ret;
}