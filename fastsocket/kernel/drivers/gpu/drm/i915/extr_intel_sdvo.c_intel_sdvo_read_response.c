
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_sdvo {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int DRM_LOG_KMS (char*,...) ;
 int SDVO_CMD_STATUS_PENDING ;
 int SDVO_CMD_STATUS_SCALING_NOT_SUPP ;
 int SDVO_CMD_STATUS_SUCCESS ;
 scalar_t__ SDVO_I2C_CMD_STATUS ;
 scalar_t__ SDVO_I2C_RETURN_0 ;
 int SDVO_NAME (struct intel_sdvo*) ;
 int * cmd_status_names ;
 int intel_sdvo_read_byte (struct intel_sdvo*,scalar_t__,int*) ;
 int msleep (int) ;
 int udelay (int) ;

__attribute__((used)) static bool intel_sdvo_read_response(struct intel_sdvo *intel_sdvo,
         void *response, int response_len)
{
 u8 retry = 15;
 u8 status;
 int i;

 DRM_DEBUG_KMS("%s: R: ", SDVO_NAME(intel_sdvo));
 if (!intel_sdvo_read_byte(intel_sdvo,
      SDVO_I2C_CMD_STATUS,
      &status))
  goto log_fail;

 while (status == SDVO_CMD_STATUS_PENDING && --retry) {
  if (retry < 10)
   msleep(15);
  else
   udelay(15);

  if (!intel_sdvo_read_byte(intel_sdvo,
       SDVO_I2C_CMD_STATUS,
       &status))
   goto log_fail;
 }

 if (status <= SDVO_CMD_STATUS_SCALING_NOT_SUPP)
  DRM_LOG_KMS("(%s)", cmd_status_names[status]);
 else
  DRM_LOG_KMS("(??? %d)", status);

 if (status != SDVO_CMD_STATUS_SUCCESS)
  goto log_fail;


 for (i = 0; i < response_len; i++) {
  if (!intel_sdvo_read_byte(intel_sdvo,
       SDVO_I2C_RETURN_0 + i,
       &((u8 *)response)[i]))
   goto log_fail;
  DRM_LOG_KMS(" %02X", ((u8 *)response)[i]);
 }
 DRM_LOG_KMS("\n");
 return 1;

log_fail:
 DRM_LOG_KMS("... failed\n");
 return 0;
}
