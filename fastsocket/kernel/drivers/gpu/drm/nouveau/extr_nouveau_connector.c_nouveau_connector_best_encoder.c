
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_connector {scalar_t__ detected_encoder; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;


 struct nouveau_connector* nouveau_connector (struct drm_connector*) ;
 struct drm_encoder* to_drm_encoder (scalar_t__) ;

__attribute__((used)) static struct drm_encoder *
nouveau_connector_best_encoder(struct drm_connector *connector)
{
 struct nouveau_connector *nv_connector = nouveau_connector(connector);

 if (nv_connector->detected_encoder)
  return to_drm_encoder(nv_connector->detected_encoder);

 return ((void*)0);
}
