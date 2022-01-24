#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct smscore_device_t {int device_flags; int mode; int modes_supported; int (* setmode_handler ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  context; int /*<<< orphan*/  (* detectmode_handler ) (int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  devpath; int /*<<< orphan*/  init_device_done; } ;
struct TYPE_2__ {int /*<<< orphan*/  msgLength; } ;
struct SmsMsgData_ST {int* msgData; TYPE_1__ xMsgHeader; } ;
typedef  enum sms_device_type_st { ____Placeholder_sms_device_type_st } sms_device_type_st ;

/* Variables and functions */
 int DEVICE_MODE_DVBT ; 
 int DEVICE_MODE_DVBT_BDA ; 
 int DEVICE_MODE_RAW_TUNER ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_SMS_INIT_DEVICE_REQ ; 
 scalar_t__ FUNC0 (void*) ; 
 int SMS_DEVICE_FAMILY2 ; 
 int SMS_DEVICE_NOT_READY ; 
 scalar_t__ SMS_DMA_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (struct smscore_device_t*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 int FUNC10 (struct smscore_device_t*) ; 
 char*** smscore_fw_lkup ; 
 int FUNC11 (struct smscore_device_t*,char*,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct smscore_device_t*,struct SmsMsgData_ST*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int) ; 

int FUNC17(struct smscore_device_t *coredev, int mode)
{
	void *buffer;
	int rc = 0;
	enum sms_device_type_st type;

	FUNC4("set device mode to %d", mode);
	if (coredev->device_flags & SMS_DEVICE_FAMILY2) {
		if (mode < DEVICE_MODE_DVBT || mode >= DEVICE_MODE_RAW_TUNER) {
			FUNC5("invalid mode specified %d", mode);
			return -EINVAL;
		}

		FUNC13(coredev->devpath, mode);

		if (!(coredev->device_flags & SMS_DEVICE_NOT_READY)) {
			rc = FUNC10(coredev);
			if (rc < 0) {
				FUNC5("mode detect failed %d", rc);
				return rc;
			}
		}

		if (coredev->mode == mode) {
			FUNC7("device mode %d already set", mode);
			return 0;
		}

		if (!(coredev->modes_supported & (1 << mode))) {
			char *fw_filename;

			type = FUNC12(coredev->devpath);
			fw_filename = FUNC6(coredev, mode, type);

			rc = FUNC11(coredev,
							     fw_filename, NULL);
			if (rc < 0) {
				FUNC9("error %d loading firmware: %s, "
					 "trying again with default firmware",
					 rc, fw_filename);

				/* try again with the default firmware */
				fw_filename = smscore_fw_lkup[mode][type];
				rc = FUNC11(coredev,
							     fw_filename, NULL);

				if (rc < 0) {
					FUNC9("error %d loading "
						 "firmware: %s", rc,
						 fw_filename);
					return rc;
				}
			}
			FUNC8("firmware download success: %s", fw_filename);
		} else
			FUNC7("mode %d supported by running "
				 "firmware", mode);

		buffer = FUNC3(sizeof(struct SmsMsgData_ST) +
				 SMS_DMA_ALIGNMENT, GFP_KERNEL | GFP_DMA);
		if (buffer) {
			struct SmsMsgData_ST *msg =
				(struct SmsMsgData_ST *)
					FUNC0(buffer);

			FUNC1(&msg->xMsgHeader, MSG_SMS_INIT_DEVICE_REQ,
				     sizeof(struct SmsMsgData_ST));
			msg->msgData[0] = mode;

			rc = FUNC14(
				coredev, msg, msg->xMsgHeader.msgLength,
				&coredev->init_device_done);

			FUNC2(buffer);
		} else {
			FUNC5("Could not allocate buffer for "
				"init device message.");
			rc = -ENOMEM;
		}
	} else {
		if (mode < DEVICE_MODE_DVBT || mode > DEVICE_MODE_DVBT_BDA) {
			FUNC5("invalid mode specified %d", mode);
			return -EINVAL;
		}

		FUNC13(coredev->devpath, mode);

		if (coredev->detectmode_handler)
			coredev->detectmode_handler(coredev->context,
						    &coredev->mode);

		if (coredev->mode != mode && coredev->setmode_handler)
			rc = coredev->setmode_handler(coredev->context, mode);
	}

	if (rc >= 0) {
		coredev->mode = mode;
		coredev->device_flags &= ~SMS_DEVICE_NOT_READY;
	}

	if (rc < 0)
		FUNC5("return error code %d.", rc);
	return rc;
}