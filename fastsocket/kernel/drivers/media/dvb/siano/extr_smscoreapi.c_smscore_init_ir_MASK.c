#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  controller; int /*<<< orphan*/ * dev; } ;
struct smscore_device_t {int /*<<< orphan*/  ir_init_done; TYPE_2__ ir; } ;
struct SmsMsgHdr_ST2 {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  msgLength; } ;
struct SmsMsgData_ST2 {TYPE_4__ xMsgHeader; int /*<<< orphan*/ * msgData; } ;
struct TYPE_5__ {int ir; } ;
struct TYPE_7__ {TYPE_1__ board_cfg; } ;

/* Variables and functions */
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_SMS_START_IR_REQ ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ SMS_DMA_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct smscore_device_t*) ; 
 int /*<<< orphan*/  FUNC8 (struct smscore_device_t*) ; 
 int FUNC9 (struct smscore_device_t*,struct SmsMsgData_ST2*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct SmsMsgHdr_ST2*) ; 

__attribute__((used)) static int FUNC11(struct smscore_device_t *coredev)
{
	int ir_io;
	int rc;
	void *buffer;

	coredev->ir.dev = NULL;
	ir_io = FUNC5(FUNC8(coredev))->board_cfg.ir;
	if (ir_io) {/* only if IR port exist we use IR sub-module */
		FUNC6("IR loading");
		rc = FUNC7(coredev);

		if	(rc != 0)
			FUNC4("Error initialization DTV IR sub-module");
		else {
			buffer = FUNC3(sizeof(struct SmsMsgData_ST2) +
						SMS_DMA_ALIGNMENT,
						GFP_KERNEL | GFP_DMA);
			if (buffer) {
				struct SmsMsgData_ST2 *msg =
				(struct SmsMsgData_ST2 *)
				FUNC0(buffer);

				FUNC1(&msg->xMsgHeader,
						MSG_SMS_START_IR_REQ,
						sizeof(struct SmsMsgData_ST2));
				msg->msgData[0] = coredev->ir.controller;
				msg->msgData[1] = coredev->ir.timeout;

				FUNC10(
					(struct SmsMsgHdr_ST2 *)msg);
				rc = FUNC9(coredev, msg,
						msg->xMsgHeader. msgLength,
						&coredev->ir_init_done);

				FUNC2(buffer);
			} else
				FUNC4
				("Sending IR initialization message failed");
		}
	} else
		FUNC6("IR port has not been detected");

	return 0;
}