
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int (* destroy ) (struct drm_encoder*) ;} ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 TYPE_1__* get_slave_funcs (struct drm_encoder*) ;
 int kfree (struct nouveau_encoder*) ;
 struct nouveau_encoder* nouveau_encoder (struct drm_encoder*) ;
 int stub1 (struct drm_encoder*) ;

__attribute__((used)) static void nv04_dfp_destroy(struct drm_encoder *encoder)
{
 struct nouveau_encoder *nv_encoder = nouveau_encoder(encoder);

 if (get_slave_funcs(encoder))
  get_slave_funcs(encoder)->destroy(encoder);

 drm_encoder_cleanup(encoder);
 kfree(nv_encoder);
}
