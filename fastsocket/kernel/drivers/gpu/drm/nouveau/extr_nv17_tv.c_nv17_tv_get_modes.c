
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv17_tv_norm_params {scalar_t__ kind; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;


 scalar_t__ CTV_ENC_MODE ;
 struct nv17_tv_norm_params* get_tv_norm (struct drm_encoder*) ;
 int nv17_tv_get_hd_modes (struct drm_encoder*,struct drm_connector*) ;
 int nv17_tv_get_ld_modes (struct drm_encoder*,struct drm_connector*) ;

__attribute__((used)) static int nv17_tv_get_modes(struct drm_encoder *encoder,
        struct drm_connector *connector)
{
 struct nv17_tv_norm_params *tv_norm = get_tv_norm(encoder);

 if (tv_norm->kind == CTV_ENC_MODE)
  return nv17_tv_get_hd_modes(encoder, connector);
 else
  return nv17_tv_get_ld_modes(encoder, connector);
}
