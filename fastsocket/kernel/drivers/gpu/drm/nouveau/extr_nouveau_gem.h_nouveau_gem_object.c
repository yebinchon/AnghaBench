
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_bo {int dummy; } ;
struct drm_gem_object {struct nouveau_bo* driver_private; } ;



__attribute__((used)) static inline struct nouveau_bo *
nouveau_gem_object(struct drm_gem_object *gem)
{
 return gem ? gem->driver_private : ((void*)0);
}
