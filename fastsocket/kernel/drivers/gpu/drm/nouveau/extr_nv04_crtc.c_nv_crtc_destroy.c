
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nvbo; } ;
struct nouveau_crtc {TYPE_1__ cursor; } ;
struct drm_crtc {int dummy; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int kfree (struct nouveau_crtc*) ;
 int nouveau_bo_ref (int *,int *) ;
 int nouveau_bo_unmap (int ) ;
 int nouveau_bo_unpin (int ) ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;

__attribute__((used)) static void nv_crtc_destroy(struct drm_crtc *crtc)
{
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);

 if (!nv_crtc)
  return;

 drm_crtc_cleanup(crtc);

 nouveau_bo_unmap(nv_crtc->cursor.nvbo);
 nouveau_bo_unpin(nv_crtc->cursor.nvbo);
 nouveau_bo_ref(((void*)0), &nv_crtc->cursor.nvbo);
 kfree(nv_crtc);
}
