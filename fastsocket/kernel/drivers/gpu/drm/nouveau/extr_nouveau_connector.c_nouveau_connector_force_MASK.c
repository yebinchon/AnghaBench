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
struct nouveau_encoder {int dummy; } ;
struct nouveau_drm {int dummy; } ;
struct nouveau_connector {scalar_t__ type; } ;
struct drm_connector {scalar_t__ force; int /*<<< orphan*/  status; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DCB_CONNECTOR_DVI_I ; 
 int DCB_OUTPUT_ANALOG ; 
 int DCB_OUTPUT_ANY ; 
 int DCB_OUTPUT_TMDS ; 
 scalar_t__ DRM_FORCE_ON_DIGITAL ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 struct nouveau_encoder* FUNC2 (struct drm_connector*,int) ; 
 struct nouveau_connector* FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct nouveau_encoder*) ; 
 struct nouveau_drm* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct drm_connector *connector)
{
	struct nouveau_drm *drm = FUNC5(connector->dev);
	struct nouveau_connector *nv_connector = FUNC3(connector);
	struct nouveau_encoder *nv_encoder;
	int type;

	if (nv_connector->type == DCB_CONNECTOR_DVI_I) {
		if (connector->force == DRM_FORCE_ON_DIGITAL)
			type = DCB_OUTPUT_TMDS;
		else
			type = DCB_OUTPUT_ANALOG;
	} else
		type = DCB_OUTPUT_ANY;

	nv_encoder = FUNC2(connector, type);
	if (!nv_encoder) {
		FUNC0(drm, "can't find encoder to force %s on!\n",
			 FUNC1(connector));
		connector->status = connector_status_disconnected;
		return;
	}

	FUNC4(connector, nv_encoder);
}