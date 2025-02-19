
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_connector {struct drm_display_mode* native_mode; } ;
struct moderec {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ vdisplay; int type; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 int DRM_MODE_TYPE_DRIVER ;
 struct drm_display_mode* drm_cvt_mode (struct drm_device*,scalar_t__,scalar_t__,int ,int,int,int) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_vrefresh (struct drm_display_mode*) ;
 struct nouveau_connector* nouveau_connector (struct drm_connector*) ;
 struct moderec* scaler_modes ;

__attribute__((used)) static int
nouveau_connector_scaler_modes_add(struct drm_connector *connector)
{
 struct nouveau_connector *nv_connector = nouveau_connector(connector);
 struct drm_display_mode *native = nv_connector->native_mode, *m;
 struct drm_device *dev = connector->dev;
 struct moderec *mode = &scaler_modes[0];
 int modes = 0;

 if (!native)
  return 0;

 while (mode->hdisplay) {
  if (mode->hdisplay <= native->hdisplay &&
      mode->vdisplay <= native->vdisplay) {
   m = drm_cvt_mode(dev, mode->hdisplay, mode->vdisplay,
      drm_mode_vrefresh(native), 0,
      0, 0);
   if (!m)
    continue;

   m->type |= DRM_MODE_TYPE_DRIVER;

   drm_mode_probed_add(connector, m);
   modes++;
  }

  mode++;
 }

 return modes;
}
