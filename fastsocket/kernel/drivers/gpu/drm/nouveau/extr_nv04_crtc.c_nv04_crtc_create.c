
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nvbo; } ;
struct TYPE_3__ {int* r; int* g; int* b; scalar_t__ depth; } ;
struct nouveau_crtc {int index; TYPE_2__ cursor; int base; int last_dpms; TYPE_1__ lut; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NV_DPMS_CLEARED ;
 int TTM_PL_FLAG_VRAM ;
 int drm_crtc_helper_add (int *,int *) ;
 int drm_crtc_init (struct drm_device*,int *,int *) ;
 int drm_mode_crtc_set_gamma_size (int *,int) ;
 struct nouveau_crtc* kzalloc (int,int ) ;
 int nouveau_bo_map (int ) ;
 int nouveau_bo_new (struct drm_device*,int,int,int ,int ,int,int *,int *) ;
 int nouveau_bo_pin (int ,int ) ;
 int nouveau_bo_ref (int *,int *) ;
 int nouveau_bo_unpin (int ) ;
 int nv04_crtc_funcs ;
 int nv04_crtc_helper_funcs ;
 int nv04_cursor_init (struct nouveau_crtc*) ;

int
nv04_crtc_create(struct drm_device *dev, int crtc_num)
{
 struct nouveau_crtc *nv_crtc;
 int ret, i;

 nv_crtc = kzalloc(sizeof(*nv_crtc), GFP_KERNEL);
 if (!nv_crtc)
  return -ENOMEM;

 for (i = 0; i < 256; i++) {
  nv_crtc->lut.r[i] = i << 8;
  nv_crtc->lut.g[i] = i << 8;
  nv_crtc->lut.b[i] = i << 8;
 }
 nv_crtc->lut.depth = 0;

 nv_crtc->index = crtc_num;
 nv_crtc->last_dpms = NV_DPMS_CLEARED;

 drm_crtc_init(dev, &nv_crtc->base, &nv04_crtc_funcs);
 drm_crtc_helper_add(&nv_crtc->base, &nv04_crtc_helper_funcs);
 drm_mode_crtc_set_gamma_size(&nv_crtc->base, 256);

 ret = nouveau_bo_new(dev, 64*64*4, 0x100, TTM_PL_FLAG_VRAM,
        0, 0x0000, ((void*)0), &nv_crtc->cursor.nvbo);
 if (!ret) {
  ret = nouveau_bo_pin(nv_crtc->cursor.nvbo, TTM_PL_FLAG_VRAM);
  if (!ret) {
   ret = nouveau_bo_map(nv_crtc->cursor.nvbo);
   if (ret)
    nouveau_bo_unpin(nv_crtc->cursor.nvbo);
  }
  if (ret)
   nouveau_bo_ref(((void*)0), &nv_crtc->cursor.nvbo);
 }

 nv04_cursor_init(nv_crtc);

 return 0;
}
