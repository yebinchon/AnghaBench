
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int helper_private; } ;
struct TYPE_2__ {int (* destroy ) (struct drm_encoder*) ;} ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 TYPE_1__* get_slave_funcs (struct drm_encoder*) ;
 int kfree (int ) ;
 int nouveau_encoder (struct drm_encoder*) ;
 int stub1 (struct drm_encoder*) ;

__attribute__((used)) static void nv04_tv_destroy(struct drm_encoder *encoder)
{
 get_slave_funcs(encoder)->destroy(encoder);
 drm_encoder_cleanup(encoder);

 kfree(encoder->helper_private);
 kfree(nouveau_encoder(encoder));
}
