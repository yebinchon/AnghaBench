
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct smscore_device_t {scalar_t__ mode; int gpio_get_res; int ir_init_done; int gpio_get_level_done; int gpio_set_level_done; int gpio_configuration_done; int resume_done; int trigger_done; int data_download_done; int reload_start_done; int init_device_done; int version_ex_done; int modes_supported; } ;
struct smscore_client_t {int (* onresponse_handler ) (int ,struct smscore_buffer_t*) ;int context; } ;
struct smscore_buffer_t {int offset; scalar_t__ size; scalar_t__ p; } ;
struct SmsVersionRes_ST {int FirmwareId; int SupportedProtocols; int RomVersionMinor; int RomVersionMajor; } ;
struct SmsMsgHdr_ST {int msgType; scalar_t__ msgLength; int msgDstId; } ;


 scalar_t__ DEVICE_MODE_DVBT_BDA ;
 int DEVICE_MODE_NONE ;
 int DVBT_BDA_CONTROL_MSG_ID ;
 int EBUSY ;





 int MSG_SMS_HO_PER_SLICES_IND ;





 int MSG_SMS_TRANSMISSION_IND ;


 int complete (int *) ;
 int jiffies ;
 unsigned long jiffies_to_msecs (int ) ;
 int sms_debug (char*,...) ;
 int sms_ir_event (struct smscore_device_t*,char const*,int) ;
 struct smscore_client_t* smscore_find_client (struct smscore_device_t*,int,int ) ;
 int smscore_putbuffer (struct smscore_device_t*,struct smscore_buffer_t*) ;
 int stub1 (int ,struct smscore_buffer_t*) ;

void smscore_onresponse(struct smscore_device_t *coredev,
  struct smscore_buffer_t *cb) {
 struct SmsMsgHdr_ST *phdr = (struct SmsMsgHdr_ST *) ((u8 *) cb->p
   + cb->offset);
 struct smscore_client_t *client;
 int rc = -EBUSY;
 static unsigned long last_sample_time;
 static int data_total;
 unsigned long time_now = jiffies_to_msecs(jiffies);

 if (!last_sample_time)
  last_sample_time = time_now;

 if (time_now - last_sample_time > 10000) {
  sms_debug("\ndata rate %d bytes/secs",
     (int)((data_total * 1000) /
    (time_now - last_sample_time)));

  last_sample_time = time_now;
  data_total = 0;
 }

 data_total += cb->size;

 if ((phdr->msgType == MSG_SMS_HO_PER_SLICES_IND) ||
   (phdr->msgType == MSG_SMS_TRANSMISSION_IND)) {
  if (coredev->mode == DEVICE_MODE_DVBT_BDA)
   phdr->msgDstId = DVBT_BDA_CONTROL_MSG_ID;
 }


 client = smscore_find_client(coredev, phdr->msgType, phdr->msgDstId);



 if (client)
  rc = client->onresponse_handler(client->context, cb);

 if (rc < 0) {
  switch (phdr->msgType) {
  case 138:
  {
   struct SmsVersionRes_ST *ver =
    (struct SmsVersionRes_ST *) phdr;
   sms_debug("MSG_SMS_GET_VERSION_EX_RES "
      "id %d prots 0x%x ver %d.%d",
      ver->FirmwareId, ver->SupportedProtocols,
      ver->RomVersionMajor, ver->RomVersionMinor);

   coredev->mode = ver->FirmwareId == 255 ?
    DEVICE_MODE_NONE : ver->FirmwareId;
   coredev->modes_supported = ver->SupportedProtocols;

   complete(&coredev->version_ex_done);
   break;
  }
  case 134:
   sms_debug("MSG_SMS_INIT_DEVICE_RES");
   complete(&coredev->init_device_done);
   break;
  case 128:
   sms_debug("MSG_SW_RELOAD_START_RES");
   complete(&coredev->reload_start_done);
   break;
  case 139:
   complete(&coredev->data_download_done);
   break;
  case 129:
   sms_debug("MSG_SW_RELOAD_EXEC_RES");
   break;
  case 130:
   sms_debug("MSG_SMS_SWDOWNLOAD_TRIGGER_RES");
   complete(&coredev->trigger_done);
   break;
  case 132:
   complete(&coredev->resume_done);
   break;
  case 137:
   sms_debug("MSG_SMS_GPIO_CONFIG_EX_RES");
   complete(&coredev->gpio_configuration_done);
   break;
  case 135:
   sms_debug("MSG_SMS_GPIO_SET_LEVEL_RES");
   complete(&coredev->gpio_set_level_done);
   break;
  case 136:
  {
   u32 *msgdata = (u32 *) phdr;
   coredev->gpio_get_res = msgdata[1];
   sms_debug("MSG_SMS_GPIO_GET_LEVEL_RES gpio level %d",
     coredev->gpio_get_res);
   complete(&coredev->gpio_get_level_done);
   break;
  }
  case 131:
   complete(&coredev->ir_init_done);
   break;
  case 133:
   sms_ir_event(coredev,
    (const char *)
    ((char *)phdr
    + sizeof(struct SmsMsgHdr_ST)),
    (int)phdr->msgLength
    - sizeof(struct SmsMsgHdr_ST));
   break;

  default:
   break;
  }
  smscore_putbuffer(coredev, cb);
 }
}
