
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dev_ops; } ;
struct intel_dvo {int panel_fixed_mode; TYPE_2__ dev; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_3__ {int (* destroy ) (TYPE_2__*) ;} ;


 struct intel_dvo* enc_to_intel_dvo (struct drm_encoder*) ;
 int intel_encoder_destroy (struct drm_encoder*) ;
 int kfree (int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void intel_dvo_enc_destroy(struct drm_encoder *encoder)
{
 struct intel_dvo *intel_dvo = enc_to_intel_dvo(encoder);

 if (intel_dvo->dev.dev_ops->destroy)
  intel_dvo->dev.dev_ops->destroy(&intel_dvo->dev);

 kfree(intel_dvo->panel_fixed_mode);

 intel_encoder_destroy(encoder);
}
