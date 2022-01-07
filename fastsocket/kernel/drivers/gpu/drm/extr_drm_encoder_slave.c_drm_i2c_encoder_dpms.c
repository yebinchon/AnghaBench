
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int (* dpms ) (struct drm_encoder*,int) ;} ;


 TYPE_1__* get_slave_funcs (struct drm_encoder*) ;
 int stub1 (struct drm_encoder*,int) ;

void drm_i2c_encoder_dpms(struct drm_encoder *encoder, int mode)
{
 get_slave_funcs(encoder)->dpms(encoder, mode);
}
