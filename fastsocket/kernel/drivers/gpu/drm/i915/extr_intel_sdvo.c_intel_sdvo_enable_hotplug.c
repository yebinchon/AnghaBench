
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo {int hotplug_active; } ;
struct intel_encoder {int base; } ;


 int SDVO_CMD_SET_ACTIVE_HOT_PLUG ;
 int intel_sdvo_write_cmd (struct intel_sdvo*,int ,int *,int) ;
 struct intel_sdvo* to_intel_sdvo (int *) ;

__attribute__((used)) static void intel_sdvo_enable_hotplug(struct intel_encoder *encoder)
{
 struct intel_sdvo *intel_sdvo = to_intel_sdvo(&encoder->base);

 intel_sdvo_write_cmd(intel_sdvo, SDVO_CMD_SET_ACTIVE_HOT_PLUG,
   &intel_sdvo->hotplug_active, 2);
}
