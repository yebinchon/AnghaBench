
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_sdvo {int dummy; } ;


 int SDVO_CMD_SET_CLOCK_RATE_MULT ;
 int intel_sdvo_set_value (struct intel_sdvo*,int ,int *,int) ;

__attribute__((used)) static bool intel_sdvo_set_clock_rate_mult(struct intel_sdvo *intel_sdvo, u8 val)
{
 return intel_sdvo_set_value(intel_sdvo, SDVO_CMD_SET_CLOCK_RATE_MULT, &val, 1);
}
