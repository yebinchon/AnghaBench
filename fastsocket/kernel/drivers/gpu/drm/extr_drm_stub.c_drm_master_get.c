
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_master {int refcount; } ;


 int kref_get (int *) ;

struct drm_master *drm_master_get(struct drm_master *master)
{
 kref_get(&master->refcount);
 return master;
}
