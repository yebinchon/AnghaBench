
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv17_tv_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 int kfree (struct nv17_tv_encoder*) ;
 struct nv17_tv_encoder* to_tv_enc (struct drm_encoder*) ;

__attribute__((used)) static void nv17_tv_destroy(struct drm_encoder *encoder)
{
 struct nv17_tv_encoder *tv_enc = to_tv_enc(encoder);

 drm_encoder_cleanup(encoder);
 kfree(tv_enc);
}
