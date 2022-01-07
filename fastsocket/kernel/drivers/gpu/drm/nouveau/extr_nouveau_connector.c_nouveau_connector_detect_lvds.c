
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nouveau_encoder {TYPE_2__* dcb; } ;
struct TYPE_6__ {scalar_t__ fp_no_ddc; } ;
struct nouveau_drm {TYPE_3__ vbios; } ;
struct nouveau_connector {int * edid; } ;
struct edid {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_4__ {scalar_t__ use_straps_for_mode; scalar_t__ use_acpi_for_edid; } ;
struct TYPE_5__ {TYPE_1__ lvdsconf; } ;


 int DCB_OUTPUT_LVDS ;
 int EDID_LENGTH ;
 int GFP_KERNEL ;
 int acpi_lid_open () ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int connector_status_unknown ;
 int drm_mode_connector_update_edid_property (struct drm_connector*,int *) ;
 struct nouveau_encoder* find_encoder (struct drm_connector*,int ) ;
 int kfree (int *) ;
 int * kmemdup (struct edid*,int ,int ) ;
 int * nouveau_acpi_edid (struct drm_device*,struct drm_connector*) ;
 scalar_t__ nouveau_bios_embedded_edid (struct drm_device*) ;
 scalar_t__ nouveau_bios_fp_mode (struct drm_device*,int *) ;
 struct nouveau_connector* nouveau_connector (struct drm_connector*) ;
 int nouveau_connector_detect (struct drm_connector*,int) ;
 int nouveau_connector_set_encoder (struct drm_connector*,struct nouveau_encoder*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_ignorelid ;

__attribute__((used)) static enum drm_connector_status
nouveau_connector_detect_lvds(struct drm_connector *connector, bool force)
{
 struct drm_device *dev = connector->dev;
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_connector *nv_connector = nouveau_connector(connector);
 struct nouveau_encoder *nv_encoder = ((void*)0);
 enum drm_connector_status status = connector_status_disconnected;


 if (nv_connector->edid) {
  drm_mode_connector_update_edid_property(connector, ((void*)0));
  kfree(nv_connector->edid);
  nv_connector->edid = ((void*)0);
 }

 nv_encoder = find_encoder(connector, DCB_OUTPUT_LVDS);
 if (!nv_encoder)
  return connector_status_disconnected;


 if (!drm->vbios.fp_no_ddc) {
  status = nouveau_connector_detect(connector, force);
  if (status == connector_status_connected)
   goto out;
 }
 if (nv_encoder->dcb->lvdsconf.use_acpi_for_edid) {
  if ((nv_connector->edid = nouveau_acpi_edid(dev, connector))) {
   status = connector_status_connected;
   goto out;
  }
 }





 if (nouveau_bios_fp_mode(dev, ((void*)0)) && (drm->vbios.fp_no_ddc ||
     nv_encoder->dcb->lvdsconf.use_straps_for_mode)) {
  status = connector_status_connected;
  goto out;
 }




 if (!drm->vbios.fp_no_ddc) {
  struct edid *edid =
   (struct edid *)nouveau_bios_embedded_edid(dev);
  if (edid) {
   nv_connector->edid =
     kmemdup(edid, EDID_LENGTH, GFP_KERNEL);
   if (nv_connector->edid)
    status = connector_status_connected;
  }
 }

out:







 drm_mode_connector_update_edid_property(connector, nv_connector->edid);
 nouveau_connector_set_encoder(connector, nv_encoder);
 return status;
}
