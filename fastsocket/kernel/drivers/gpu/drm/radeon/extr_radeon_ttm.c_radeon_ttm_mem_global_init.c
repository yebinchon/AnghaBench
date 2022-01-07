
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_global_reference {int object; } ;


 int ttm_mem_global_init (int ) ;

__attribute__((used)) static int radeon_ttm_mem_global_init(struct drm_global_reference *ref)
{
 return ttm_mem_global_init(ref->object);
}
