
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ duallink_transition_clk; int strapless_is_24bit; scalar_t__ if_is_24bit; } ;
struct nvbios {TYPE_2__ fp; scalar_t__ fp_no_ddc; } ;
struct nouveau_encoder {TYPE_1__* dcb; } ;
struct nouveau_drm {struct nvbios vbios; } ;
struct nouveau_connector {scalar_t__ type; scalar_t__ edid; struct drm_display_mode* native_mode; struct nouveau_encoder* detected_encoder; } ;
struct drm_display_mode {scalar_t__ clock; } ;
struct TYPE_6__ {int bpc; } ;
struct drm_connector {TYPE_3__ display_info; int dev; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 scalar_t__ DCB_CONNECTOR_LVDS_SPWG ;
 scalar_t__ DCB_CONNECTOR_eDP ;
 scalar_t__ DCB_OUTPUT_LVDS ;
 struct nouveau_connector* nouveau_connector (struct drm_connector*) ;
 struct nouveau_drm* nouveau_drm (int ) ;

__attribute__((used)) static void
nouveau_connector_detect_depth(struct drm_connector *connector)
{
 struct nouveau_drm *drm = nouveau_drm(connector->dev);
 struct nouveau_connector *nv_connector = nouveau_connector(connector);
 struct nouveau_encoder *nv_encoder = nv_connector->detected_encoder;
 struct nvbios *bios = &drm->vbios;
 struct drm_display_mode *mode = nv_connector->native_mode;
 bool duallink;


 if (nv_connector->edid && connector->display_info.bpc)
  return;


 if (nv_connector->type == DCB_CONNECTOR_eDP) {
  connector->display_info.bpc = 6;
  return;
 }


 if (nv_encoder->dcb->type != DCB_OUTPUT_LVDS) {
  connector->display_info.bpc = 8;
  return;
 }

 connector->display_info.bpc = 6;


 if (bios->fp_no_ddc) {
  if (bios->fp.if_is_24bit)
   connector->display_info.bpc = 8;
  return;
 }




 if (nv_connector->edid &&
     nv_connector->type == DCB_CONNECTOR_LVDS_SPWG)
  duallink = ((u8 *)nv_connector->edid)[121] == 2;
 else
  duallink = mode->clock >= bios->fp.duallink_transition_clk;

 if ((!duallink && (bios->fp.strapless_is_24bit & 1)) ||
     ( duallink && (bios->fp.strapless_is_24bit & 2)))
  connector->display_info.bpc = 8;
}
