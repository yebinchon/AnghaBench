
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_i2c_port {int dummy; } ;
struct nouveau_gpio {int (* get ) (struct nouveau_gpio*,int ,int ,int) ;int (* set ) (struct nouveau_gpio*,int ,int ,int,int) ;} ;
struct nouveau_encoder {struct nouveau_i2c_port* i2c; } ;
struct nouveau_drm {int device; } ;
struct nouveau_connector {scalar_t__ type; } ;
struct drm_mode_object {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int* encoder_ids; struct drm_device* dev; } ;


 scalar_t__ DCB_CONNECTOR_eDP ;
 int DCB_GPIO_PANEL_POWER ;
 int DRM_CONNECTOR_MAX_ENCODER ;
 int DRM_MODE_OBJECT_ENCODER ;
 int ENODEV ;
 struct drm_mode_object* drm_mode_object_find (struct drm_device*,int,int ) ;
 int msleep (int) ;
 struct nouveau_connector* nouveau_connector (struct drm_connector*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nouveau_encoder* nouveau_encoder (int ) ;
 struct nouveau_gpio* nouveau_gpio (int ) ;
 scalar_t__ nv_probe_i2c (struct nouveau_i2c_port*,int) ;
 int obj_to_encoder (struct drm_mode_object*) ;
 int stub1 (struct nouveau_gpio*,int ,int ,int) ;
 int stub2 (struct nouveau_gpio*,int ,int ,int,int) ;
 int stub3 (struct nouveau_gpio*,int ,int ,int,int) ;

__attribute__((used)) static struct nouveau_i2c_port *
nouveau_connector_ddc_detect(struct drm_connector *connector,
        struct nouveau_encoder **pnv_encoder)
{
 struct drm_device *dev = connector->dev;
 struct nouveau_connector *nv_connector = nouveau_connector(connector);
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_gpio *gpio = nouveau_gpio(drm->device);
 struct nouveau_i2c_port *port = ((void*)0);
 int i, panel = -ENODEV;





 if (nv_connector->type == DCB_CONNECTOR_eDP) {
  panel = gpio->get(gpio, 0, DCB_GPIO_PANEL_POWER, 0xff);
  if (panel == 0) {
   gpio->set(gpio, 0, DCB_GPIO_PANEL_POWER, 0xff, 1);
   msleep(300);
  }
 }

 for (i = 0; i < DRM_CONNECTOR_MAX_ENCODER; i++) {
  struct nouveau_encoder *nv_encoder;
  struct drm_mode_object *obj;
  int id;

  id = connector->encoder_ids[i];
  if (!id)
   break;

  obj = drm_mode_object_find(dev, id, DRM_MODE_OBJECT_ENCODER);
  if (!obj)
   continue;
  nv_encoder = nouveau_encoder(obj_to_encoder(obj));

  port = nv_encoder->i2c;
  if (port && nv_probe_i2c(port, 0x50)) {
   *pnv_encoder = nv_encoder;
   break;
  }

  port = ((void*)0);
 }




 if (!port && panel == 0)
  gpio->set(gpio, 0, DCB_GPIO_PANEL_POWER, 0xff, panel);

 return port;
}
