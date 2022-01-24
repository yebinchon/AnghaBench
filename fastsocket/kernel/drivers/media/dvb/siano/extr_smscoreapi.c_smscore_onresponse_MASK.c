#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct smscore_device_t {scalar_t__ mode; int gpio_get_res; int /*<<< orphan*/  ir_init_done; int /*<<< orphan*/  gpio_get_level_done; int /*<<< orphan*/  gpio_set_level_done; int /*<<< orphan*/  gpio_configuration_done; int /*<<< orphan*/  resume_done; int /*<<< orphan*/  trigger_done; int /*<<< orphan*/  data_download_done; int /*<<< orphan*/  reload_start_done; int /*<<< orphan*/  init_device_done; int /*<<< orphan*/  version_ex_done; int /*<<< orphan*/  modes_supported; } ;
struct smscore_client_t {int (* onresponse_handler ) (int /*<<< orphan*/ ,struct smscore_buffer_t*) ;int /*<<< orphan*/  context; } ;
struct smscore_buffer_t {int offset; scalar_t__ size; scalar_t__ p; } ;
struct SmsVersionRes_ST {int FirmwareId; int /*<<< orphan*/  SupportedProtocols; int /*<<< orphan*/  RomVersionMinor; int /*<<< orphan*/  RomVersionMajor; } ;
struct SmsMsgHdr_ST {int msgType; scalar_t__ msgLength; int /*<<< orphan*/  msgDstId; } ;

/* Variables and functions */
 scalar_t__ DEVICE_MODE_DVBT_BDA ; 
 int DEVICE_MODE_NONE ; 
 int /*<<< orphan*/  DVBT_BDA_CONTROL_MSG_ID ; 
 int EBUSY ; 
#define  MSG_SMS_DATA_DOWNLOAD_RES 139 
#define  MSG_SMS_GET_VERSION_EX_RES 138 
#define  MSG_SMS_GPIO_CONFIG_EX_RES 137 
#define  MSG_SMS_GPIO_GET_LEVEL_RES 136 
#define  MSG_SMS_GPIO_SET_LEVEL_RES 135 
 int MSG_SMS_HO_PER_SLICES_IND ; 
#define  MSG_SMS_INIT_DEVICE_RES 134 
#define  MSG_SMS_IR_SAMPLES_IND 133 
#define  MSG_SMS_SLEEP_RESUME_COMP_IND 132 
#define  MSG_SMS_START_IR_RES 131 
#define  MSG_SMS_SWDOWNLOAD_TRIGGER_RES 130 
 int MSG_SMS_TRANSMISSION_IND ; 
#define  MSG_SW_RELOAD_EXEC_RES 129 
#define  MSG_SW_RELOAD_START_RES 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct smscore_device_t*,char const*,int) ; 
 struct smscore_client_t* FUNC4 (struct smscore_device_t*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smscore_device_t*,struct smscore_buffer_t*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct smscore_buffer_t*) ; 

void FUNC7(struct smscore_device_t *coredev,
		struct smscore_buffer_t *cb) {
	struct SmsMsgHdr_ST *phdr = (struct SmsMsgHdr_ST *) ((u8 *) cb->p
			+ cb->offset);
	struct smscore_client_t *client;
	int rc = -EBUSY;
	static unsigned long last_sample_time; /* = 0; */
	static int data_total; /* = 0; */
	unsigned long time_now = FUNC1(jiffies);

	if (!last_sample_time)
		last_sample_time = time_now;

	if (time_now - last_sample_time > 10000) {
		FUNC2("\ndata rate %d bytes/secs",
			  (int)((data_total * 1000) /
				(time_now - last_sample_time)));

		last_sample_time = time_now;
		data_total = 0;
	}

	data_total += cb->size;
	/* Do we need to re-route? */
	if ((phdr->msgType == MSG_SMS_HO_PER_SLICES_IND) ||
			(phdr->msgType == MSG_SMS_TRANSMISSION_IND)) {
		if (coredev->mode == DEVICE_MODE_DVBT_BDA)
			phdr->msgDstId = DVBT_BDA_CONTROL_MSG_ID;
	}


	client = FUNC4(coredev, phdr->msgType, phdr->msgDstId);

	/* If no client registered for type & id,
	 * check for control client where type is not registered */
	if (client)
		rc = client->onresponse_handler(client->context, cb);

	if (rc < 0) {
		switch (phdr->msgType) {
		case MSG_SMS_GET_VERSION_EX_RES:
		{
			struct SmsVersionRes_ST *ver =
				(struct SmsVersionRes_ST *) phdr;
			FUNC2("MSG_SMS_GET_VERSION_EX_RES "
				  "id %d prots 0x%x ver %d.%d",
				  ver->FirmwareId, ver->SupportedProtocols,
				  ver->RomVersionMajor, ver->RomVersionMinor);

			coredev->mode = ver->FirmwareId == 255 ?
				DEVICE_MODE_NONE : ver->FirmwareId;
			coredev->modes_supported = ver->SupportedProtocols;

			FUNC0(&coredev->version_ex_done);
			break;
		}
		case MSG_SMS_INIT_DEVICE_RES:
			FUNC2("MSG_SMS_INIT_DEVICE_RES");
			FUNC0(&coredev->init_device_done);
			break;
		case MSG_SW_RELOAD_START_RES:
			FUNC2("MSG_SW_RELOAD_START_RES");
			FUNC0(&coredev->reload_start_done);
			break;
		case MSG_SMS_DATA_DOWNLOAD_RES:
			FUNC0(&coredev->data_download_done);
			break;
		case MSG_SW_RELOAD_EXEC_RES:
			FUNC2("MSG_SW_RELOAD_EXEC_RES");
			break;
		case MSG_SMS_SWDOWNLOAD_TRIGGER_RES:
			FUNC2("MSG_SMS_SWDOWNLOAD_TRIGGER_RES");
			FUNC0(&coredev->trigger_done);
			break;
		case MSG_SMS_SLEEP_RESUME_COMP_IND:
			FUNC0(&coredev->resume_done);
			break;
		case MSG_SMS_GPIO_CONFIG_EX_RES:
			FUNC2("MSG_SMS_GPIO_CONFIG_EX_RES");
			FUNC0(&coredev->gpio_configuration_done);
			break;
		case MSG_SMS_GPIO_SET_LEVEL_RES:
			FUNC2("MSG_SMS_GPIO_SET_LEVEL_RES");
			FUNC0(&coredev->gpio_set_level_done);
			break;
		case MSG_SMS_GPIO_GET_LEVEL_RES:
		{
			u32 *msgdata = (u32 *) phdr;
			coredev->gpio_get_res = msgdata[1];
			FUNC2("MSG_SMS_GPIO_GET_LEVEL_RES gpio level %d",
					coredev->gpio_get_res);
			FUNC0(&coredev->gpio_get_level_done);
			break;
		}
		case MSG_SMS_START_IR_RES:
			FUNC0(&coredev->ir_init_done);
			break;
		case MSG_SMS_IR_SAMPLES_IND:
			FUNC3(coredev,
				(const char *)
				((char *)phdr
				+ sizeof(struct SmsMsgHdr_ST)),
				(int)phdr->msgLength
				- sizeof(struct SmsMsgHdr_ST));
			break;

		default:
			break;
		}
		FUNC5(coredev, cb);
	}
}