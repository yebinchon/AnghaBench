
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {scalar_t__ export_dma_buf; TYPE_1__* import_attach; } ;
struct drm_file {int prime; } ;
struct TYPE_2__ {scalar_t__ dmabuf; } ;


 int drm_prime_remove_buf_handle (int *,scalar_t__) ;

__attribute__((used)) static void
drm_gem_remove_prime_handles(struct drm_gem_object *obj, struct drm_file *filp)
{
 if (obj->import_attach) {
  drm_prime_remove_buf_handle(&filp->prime,
    obj->import_attach->dmabuf);
 }
 if (obj->export_dma_buf) {
  drm_prime_remove_buf_handle(&filp->prime,
    obj->export_dma_buf);
 }
}
