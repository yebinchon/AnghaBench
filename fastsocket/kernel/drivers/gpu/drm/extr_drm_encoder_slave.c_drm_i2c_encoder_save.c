
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int (* save ) (struct drm_encoder*) ;} ;


 TYPE_1__* get_slave_funcs (struct drm_encoder*) ;
 int stub1 (struct drm_encoder*) ;

void drm_i2c_encoder_save(struct drm_encoder *encoder)
{
 get_slave_funcs(encoder)->save(encoder);
}
