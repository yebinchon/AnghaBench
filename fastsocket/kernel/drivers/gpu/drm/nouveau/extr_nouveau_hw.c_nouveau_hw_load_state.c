
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_mode_state {int dummy; } ;
struct drm_device {int dummy; } ;


 int NVVgaProtect (struct drm_device*,int,int) ;
 int nouveau_hw_load_state_palette (struct drm_device*,int,struct nv04_mode_state*) ;
 int nv_load_state_ext (struct drm_device*,int,struct nv04_mode_state*) ;
 int nv_load_state_ramdac (struct drm_device*,int,struct nv04_mode_state*) ;
 int nv_load_state_vga (struct drm_device*,int,struct nv04_mode_state*) ;

void nouveau_hw_load_state(struct drm_device *dev, int head,
      struct nv04_mode_state *state)
{
 NVVgaProtect(dev, head, 1);
 nv_load_state_ramdac(dev, head, state);
 nv_load_state_ext(dev, head, state);
 nouveau_hw_load_state_palette(dev, head, state);
 nv_load_state_vga(dev, head, state);
 NVVgaProtect(dev, head, 0);
}
