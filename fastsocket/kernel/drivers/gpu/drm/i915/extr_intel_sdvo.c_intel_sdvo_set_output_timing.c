
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo_dtd {int dummy; } ;
struct intel_sdvo {int dummy; } ;


 int SDVO_CMD_SET_OUTPUT_TIMINGS_PART1 ;
 int intel_sdvo_set_timing (struct intel_sdvo*,int ,struct intel_sdvo_dtd*) ;

__attribute__((used)) static bool intel_sdvo_set_output_timing(struct intel_sdvo *intel_sdvo,
      struct intel_sdvo_dtd *dtd)
{
 return intel_sdvo_set_timing(intel_sdvo,
         SDVO_CMD_SET_OUTPUT_TIMINGS_PART1, dtd);
}
