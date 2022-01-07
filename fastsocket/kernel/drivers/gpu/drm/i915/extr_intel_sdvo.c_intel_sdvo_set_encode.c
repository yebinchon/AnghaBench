
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct intel_sdvo {int dummy; } ;


 int SDVO_CMD_SET_ENCODE ;
 int intel_sdvo_set_value (struct intel_sdvo*,int ,int *,int) ;

__attribute__((used)) static bool intel_sdvo_set_encode(struct intel_sdvo *intel_sdvo,
      uint8_t mode)
{
 return intel_sdvo_set_value(intel_sdvo, SDVO_CMD_SET_ENCODE, &mode, 1);
}
