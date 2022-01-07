
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_connector {struct drm_connector* edid; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_sysfs_connector_remove (struct drm_connector*) ;
 int kfree (struct drm_connector*) ;
 struct nouveau_connector* nouveau_connector (struct drm_connector*) ;

__attribute__((used)) static void
nouveau_connector_destroy(struct drm_connector *connector)
{
 struct nouveau_connector *nv_connector = nouveau_connector(connector);
 kfree(nv_connector->edid);
 drm_sysfs_connector_remove(connector);
 drm_connector_cleanup(connector);
 kfree(connector);
}
