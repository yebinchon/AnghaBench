
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct intel_crt {TYPE_2__* connector; } ;
struct TYPE_3__ {int dpms; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int intel_crt_set_dpms (struct intel_encoder*,int ) ;
 struct intel_crt* intel_encoder_to_crt (struct intel_encoder*) ;

__attribute__((used)) static void intel_enable_crt(struct intel_encoder *encoder)
{
 struct intel_crt *crt = intel_encoder_to_crt(encoder);

 intel_crt_set_dpms(encoder, crt->connector->base.dpms);
}
