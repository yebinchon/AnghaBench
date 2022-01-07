
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_global_reference {int object; } ;


 int ttm_mem_global_release (int ) ;

__attribute__((used)) static void
nouveau_ttm_mem_global_release(struct drm_global_reference *ref)
{
 ttm_mem_global_release(ref->object);
}
