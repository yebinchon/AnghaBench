
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_sdvo {int dummy; } ;


 int SDVO_CMD_SET_CONTROL_BUS_SWITCH ;
 int intel_sdvo_write_cmd (struct intel_sdvo*,int ,int *,int) ;

__attribute__((used)) static bool intel_sdvo_set_control_bus_switch(struct intel_sdvo *intel_sdvo,
           u8 ddc_bus)
{

 return intel_sdvo_write_cmd(intel_sdvo,
        SDVO_CMD_SET_CONTROL_BUS_SWITCH,
        &ddc_bus, 1);
}
