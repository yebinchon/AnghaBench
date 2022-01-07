
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output_flags; } ;
struct intel_sdvo {TYPE_1__ caps; } ;


 int hweight16 (int ) ;

__attribute__((used)) static bool
intel_sdvo_multifunc_encoder(struct intel_sdvo *intel_sdvo)
{

 return hweight16(intel_sdvo->caps.output_flags) > 1;
}
