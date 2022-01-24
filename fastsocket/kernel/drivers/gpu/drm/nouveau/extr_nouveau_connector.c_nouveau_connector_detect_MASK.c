#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nouveau_i2c_port {int /*<<< orphan*/  adapter; } ;
struct nouveau_encoder {TYPE_1__* dcb; } ;
struct nouveau_drm {int dummy; } ;
struct nouveau_connector {TYPE_2__* edid; } ;
struct drm_encoder_helper_funcs {int (* detect ) (struct drm_encoder*,struct drm_connector*) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_6__ {int input; } ;
struct TYPE_5__ {scalar_t__ type; } ;

/* Variables and functions */
 int DCB_OUTPUT_ANALOG ; 
 scalar_t__ DCB_OUTPUT_DP ; 
 int DCB_OUTPUT_TMDS ; 
 int DCB_OUTPUT_TV ; 
 int DRM_EDID_INPUT_DIGITAL ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int /*<<< orphan*/ ) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 TYPE_2__* FUNC2 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,TYPE_2__*) ; 
 struct nouveau_encoder* FUNC4 (struct drm_connector*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct nouveau_connector* FUNC6 (struct drm_connector*) ; 
 struct nouveau_i2c_port* FUNC7 (struct drm_connector*,struct nouveau_encoder**) ; 
 struct nouveau_encoder* FUNC8 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_connector*,struct nouveau_encoder*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_encoder*) ; 
 struct nouveau_drm* FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  nouveau_tv_disable ; 
 int FUNC12 (struct drm_encoder*,struct drm_connector*) ; 
 struct drm_encoder* FUNC13 (struct nouveau_encoder*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC14(struct drm_connector *connector, bool force)
{
	struct drm_device *dev = connector->dev;
	struct nouveau_drm *drm = FUNC11(dev);
	struct nouveau_connector *nv_connector = FUNC6(connector);
	struct nouveau_encoder *nv_encoder = NULL;
	struct nouveau_encoder *nv_partner;
	struct nouveau_i2c_port *i2c;
	int type;

	/* Cleanup the previous EDID block. */
	if (nv_connector->edid) {
		FUNC3(connector, NULL);
		FUNC5(nv_connector->edid);
		nv_connector->edid = NULL;
	}

	i2c = FUNC7(connector, &nv_encoder);
	if (i2c) {
		nv_connector->edid = FUNC2(connector, &i2c->adapter);
		FUNC3(connector,
							nv_connector->edid);
		if (!nv_connector->edid) {
			FUNC0(drm, "DDC responded, but no EDID for %s\n",
				 FUNC1(connector));
			goto detect_analog;
		}

		if (nv_encoder->dcb->type == DCB_OUTPUT_DP &&
		    !FUNC10(FUNC13(nv_encoder))) {
			FUNC0(drm, "Detected %s, but failed init\n",
				 FUNC1(connector));
			return connector_status_disconnected;
		}

		/* Override encoder type for DVI-I based on whether EDID
		 * says the display is digital or analog, both use the
		 * same i2c channel so the value returned from ddc_detect
		 * isn't necessarily correct.
		 */
		nv_partner = NULL;
		if (nv_encoder->dcb->type == DCB_OUTPUT_TMDS)
			nv_partner = FUNC4(connector, DCB_OUTPUT_ANALOG);
		if (nv_encoder->dcb->type == DCB_OUTPUT_ANALOG)
			nv_partner = FUNC4(connector, DCB_OUTPUT_TMDS);

		if (nv_partner && ((nv_encoder->dcb->type == DCB_OUTPUT_ANALOG &&
				    nv_partner->dcb->type == DCB_OUTPUT_TMDS) ||
				   (nv_encoder->dcb->type == DCB_OUTPUT_TMDS &&
				    nv_partner->dcb->type == DCB_OUTPUT_ANALOG))) {
			if (nv_connector->edid->input & DRM_EDID_INPUT_DIGITAL)
				type = DCB_OUTPUT_TMDS;
			else
				type = DCB_OUTPUT_ANALOG;

			nv_encoder = FUNC4(connector, type);
		}

		FUNC9(connector, nv_encoder);
		return connector_status_connected;
	}

	nv_encoder = FUNC8(connector);
	if (nv_encoder) {
		FUNC9(connector, nv_encoder);
		return connector_status_connected;
	}

detect_analog:
	nv_encoder = FUNC4(connector, DCB_OUTPUT_ANALOG);
	if (!nv_encoder && !nouveau_tv_disable)
		nv_encoder = FUNC4(connector, DCB_OUTPUT_TV);
	if (nv_encoder && force) {
		struct drm_encoder *encoder = FUNC13(nv_encoder);
		struct drm_encoder_helper_funcs *helper =
						encoder->helper_private;

		if (helper->detect(encoder, connector) ==
						connector_status_connected) {
			FUNC9(connector, nv_encoder);
			return connector_status_connected;
		}

	}

	return connector_status_disconnected;
}