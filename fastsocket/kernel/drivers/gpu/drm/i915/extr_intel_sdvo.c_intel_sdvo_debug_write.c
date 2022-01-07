
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct intel_sdvo {int dummy; } ;
struct TYPE_3__ {scalar_t__ cmd; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DRM_DEBUG_KMS (char*,int ,scalar_t__) ;
 int DRM_LOG_KMS (char*,...) ;
 int SDVO_NAME (struct intel_sdvo*) ;
 TYPE_1__* sdvo_cmd_names ;

__attribute__((used)) static void intel_sdvo_debug_write(struct intel_sdvo *intel_sdvo, u8 cmd,
       const void *args, int args_len)
{
 int i;

 DRM_DEBUG_KMS("%s: W: %02X ",
    SDVO_NAME(intel_sdvo), cmd);
 for (i = 0; i < args_len; i++)
  DRM_LOG_KMS("%02X ", ((u8 *)args)[i]);
 for (; i < 8; i++)
  DRM_LOG_KMS("   ");
 for (i = 0; i < ARRAY_SIZE(sdvo_cmd_names); i++) {
  if (cmd == sdvo_cmd_names[i].cmd) {
   DRM_LOG_KMS("(%s)", sdvo_cmd_names[i].name);
   break;
  }
 }
 if (i == ARRAY_SIZE(sdvo_cmd_names))
  DRM_LOG_KMS("(%02X)", cmd);
 DRM_LOG_KMS("\n");
}
