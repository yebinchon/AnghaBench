
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nouveau_i2c_port {int adapter; } ;
struct nouveau_encoder {TYPE_1__* dcb; } ;
struct nouveau_drm {int dummy; } ;
struct nouveau_connector {TYPE_2__* edid; } ;
struct drm_encoder_helper_funcs {int (* detect ) (struct drm_encoder*,struct drm_connector*) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_6__ {int input; } ;
struct TYPE_5__ {scalar_t__ type; } ;


 int DCB_OUTPUT_ANALOG ;
 scalar_t__ DCB_OUTPUT_DP ;
 int DCB_OUTPUT_TMDS ;
 int DCB_OUTPUT_TV ;
 int DRM_EDID_INPUT_DIGITAL ;
 int NV_ERROR (struct nouveau_drm*,char*,int ) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int drm_get_connector_name (struct drm_connector*) ;
 TYPE_2__* drm_get_edid (struct drm_connector*,int *) ;
 int drm_mode_connector_update_edid_property (struct drm_connector*,TYPE_2__*) ;
 struct nouveau_encoder* find_encoder (struct drm_connector*,int) ;
 int kfree (TYPE_2__*) ;
 struct nouveau_connector* nouveau_connector (struct drm_connector*) ;
 struct nouveau_i2c_port* nouveau_connector_ddc_detect (struct drm_connector*,struct nouveau_encoder**) ;
 struct nouveau_encoder* nouveau_connector_of_detect (struct drm_connector*) ;
 int nouveau_connector_set_encoder (struct drm_connector*,struct nouveau_encoder*) ;
 int nouveau_dp_detect (struct drm_encoder*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_tv_disable ;
 int stub1 (struct drm_encoder*,struct drm_connector*) ;
 struct drm_encoder* to_drm_encoder (struct nouveau_encoder*) ;

__attribute__((used)) static enum drm_connector_status
nouveau_connector_detect(struct drm_connector *connector, bool force)
{
 struct drm_device *dev = connector->dev;
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_connector *nv_connector = nouveau_connector(connector);
 struct nouveau_encoder *nv_encoder = ((void*)0);
 struct nouveau_encoder *nv_partner;
 struct nouveau_i2c_port *i2c;
 int type;


 if (nv_connector->edid) {
  drm_mode_connector_update_edid_property(connector, ((void*)0));
  kfree(nv_connector->edid);
  nv_connector->edid = ((void*)0);
 }

 i2c = nouveau_connector_ddc_detect(connector, &nv_encoder);
 if (i2c) {
  nv_connector->edid = drm_get_edid(connector, &i2c->adapter);
  drm_mode_connector_update_edid_property(connector,
       nv_connector->edid);
  if (!nv_connector->edid) {
   NV_ERROR(drm, "DDC responded, but no EDID for %s\n",
     drm_get_connector_name(connector));
   goto detect_analog;
  }

  if (nv_encoder->dcb->type == DCB_OUTPUT_DP &&
      !nouveau_dp_detect(to_drm_encoder(nv_encoder))) {
   NV_ERROR(drm, "Detected %s, but failed init\n",
     drm_get_connector_name(connector));
   return connector_status_disconnected;
  }






  nv_partner = ((void*)0);
  if (nv_encoder->dcb->type == DCB_OUTPUT_TMDS)
   nv_partner = find_encoder(connector, DCB_OUTPUT_ANALOG);
  if (nv_encoder->dcb->type == DCB_OUTPUT_ANALOG)
   nv_partner = find_encoder(connector, DCB_OUTPUT_TMDS);

  if (nv_partner && ((nv_encoder->dcb->type == DCB_OUTPUT_ANALOG &&
        nv_partner->dcb->type == DCB_OUTPUT_TMDS) ||
       (nv_encoder->dcb->type == DCB_OUTPUT_TMDS &&
        nv_partner->dcb->type == DCB_OUTPUT_ANALOG))) {
   if (nv_connector->edid->input & DRM_EDID_INPUT_DIGITAL)
    type = DCB_OUTPUT_TMDS;
   else
    type = DCB_OUTPUT_ANALOG;

   nv_encoder = find_encoder(connector, type);
  }

  nouveau_connector_set_encoder(connector, nv_encoder);
  return connector_status_connected;
 }

 nv_encoder = nouveau_connector_of_detect(connector);
 if (nv_encoder) {
  nouveau_connector_set_encoder(connector, nv_encoder);
  return connector_status_connected;
 }

detect_analog:
 nv_encoder = find_encoder(connector, DCB_OUTPUT_ANALOG);
 if (!nv_encoder && !nouveau_tv_disable)
  nv_encoder = find_encoder(connector, DCB_OUTPUT_TV);
 if (nv_encoder && force) {
  struct drm_encoder *encoder = to_drm_encoder(nv_encoder);
  struct drm_encoder_helper_funcs *helper =
      encoder->helper_private;

  if (helper->detect(encoder, connector) ==
      connector_status_connected) {
   nouveau_connector_set_encoder(connector, nv_encoder);
   return connector_status_connected;
  }

 }

 return connector_status_disconnected;
}
