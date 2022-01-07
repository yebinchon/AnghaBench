
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_drm {int device; } ;
struct nouveau_connector {TYPE_1__* detected_encoder; } ;
struct drm_connector {int dev; } ;
struct dcb_output {scalar_t__ location; } ;
struct TYPE_4__ {int chipset; } ;
struct TYPE_3__ {struct dcb_output* dcb; } ;


 scalar_t__ DCB_LOC_ON_CHIP ;
 struct nouveau_connector* nouveau_connector (struct drm_connector*) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 TYPE_2__* nv_device (int ) ;

__attribute__((used)) static unsigned
get_tmds_link_bandwidth(struct drm_connector *connector)
{
 struct nouveau_connector *nv_connector = nouveau_connector(connector);
 struct nouveau_drm *drm = nouveau_drm(connector->dev);
 struct dcb_output *dcb = nv_connector->detected_encoder->dcb;

 if (dcb->location != DCB_LOC_ON_CHIP ||
     nv_device(drm->device)->chipset >= 0x46)
  return 165000;
 else if (nv_device(drm->device)->chipset >= 0x40)
  return 155000;
 else if (nv_device(drm->device)->chipset >= 0x18)
  return 135000;
 else
  return 112000;
}
