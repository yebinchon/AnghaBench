
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int needs_tv_clock; int crtc_mask; } ;
struct TYPE_3__ {int output_flags; } ;
struct intel_sdvo {int is_tv; int is_lvds; TYPE_2__ base; TYPE_1__ caps; scalar_t__ controlled_output; } ;


 int DRM_DEBUG_KMS (char*,int ,unsigned char,unsigned char) ;
 int SDVO_LVDS_MASK ;
 int SDVO_NAME (struct intel_sdvo*) ;
 int SDVO_OUTPUT_CVBS0 ;
 int SDVO_OUTPUT_LVDS0 ;
 int SDVO_OUTPUT_MASK ;
 int SDVO_OUTPUT_RGB0 ;
 int SDVO_OUTPUT_SVID0 ;
 int SDVO_OUTPUT_TMDS0 ;
 int SDVO_OUTPUT_YPRPB0 ;
 int SDVO_RGB_MASK ;
 int SDVO_TMDS_MASK ;
 int intel_sdvo_analog_init (struct intel_sdvo*,int) ;
 int intel_sdvo_dvi_init (struct intel_sdvo*,int) ;
 int intel_sdvo_lvds_init (struct intel_sdvo*,int) ;
 int intel_sdvo_tv_init (struct intel_sdvo*,int) ;
 int memcpy (unsigned char*,int *,int) ;

__attribute__((used)) static bool
intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, uint16_t flags)
{
 intel_sdvo->is_tv = 0;
 intel_sdvo->base.needs_tv_clock = 0;
 intel_sdvo->is_lvds = 0;



 if (flags & SDVO_OUTPUT_TMDS0)
  if (!intel_sdvo_dvi_init(intel_sdvo, 0))
   return 0;

 if ((flags & SDVO_TMDS_MASK) == SDVO_TMDS_MASK)
  if (!intel_sdvo_dvi_init(intel_sdvo, 1))
   return 0;


 if (flags & SDVO_OUTPUT_SVID0)
  if (!intel_sdvo_tv_init(intel_sdvo, SDVO_OUTPUT_SVID0))
   return 0;

 if (flags & SDVO_OUTPUT_CVBS0)
  if (!intel_sdvo_tv_init(intel_sdvo, SDVO_OUTPUT_CVBS0))
   return 0;

 if (flags & SDVO_OUTPUT_YPRPB0)
  if (!intel_sdvo_tv_init(intel_sdvo, SDVO_OUTPUT_YPRPB0))
   return 0;

 if (flags & SDVO_OUTPUT_RGB0)
  if (!intel_sdvo_analog_init(intel_sdvo, 0))
   return 0;

 if ((flags & SDVO_RGB_MASK) == SDVO_RGB_MASK)
  if (!intel_sdvo_analog_init(intel_sdvo, 1))
   return 0;

 if (flags & SDVO_OUTPUT_LVDS0)
  if (!intel_sdvo_lvds_init(intel_sdvo, 0))
   return 0;

 if ((flags & SDVO_LVDS_MASK) == SDVO_LVDS_MASK)
  if (!intel_sdvo_lvds_init(intel_sdvo, 1))
   return 0;

 if ((flags & SDVO_OUTPUT_MASK) == 0) {
  unsigned char bytes[2];

  intel_sdvo->controlled_output = 0;
  memcpy(bytes, &intel_sdvo->caps.output_flags, 2);
  DRM_DEBUG_KMS("%s: Unknown SDVO output type (0x%02x%02x)\n",
         SDVO_NAME(intel_sdvo),
         bytes[0], bytes[1]);
  return 0;
 }
 intel_sdvo->base.crtc_mask = (1 << 0) | (1 << 1) | (1 << 2);

 return 1;
}
