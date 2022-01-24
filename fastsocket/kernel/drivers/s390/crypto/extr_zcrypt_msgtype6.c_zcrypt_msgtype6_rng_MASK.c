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
struct zcrypt_device {int /*<<< orphan*/  ap_dev; } ;
struct response_type {int /*<<< orphan*/  work; int /*<<< orphan*/  type; } ;
struct ap_message {int /*<<< orphan*/  message; struct response_type* private; scalar_t__ psmid; int /*<<< orphan*/  receive; } ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 long ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSGTYPE06_MAX_MSG_SIZE ; 
 int /*<<< orphan*/  PCIXCC_RESPONSE_TYPE_XCRB ; 
 int /*<<< orphan*/  ZCRYPT_RNG_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ap_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct ap_message*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ap_message*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct zcrypt_device*,struct ap_message*,char*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct ap_message*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zcrypt_msgtype6_receive ; 
 int /*<<< orphan*/  zcrypt_step ; 

__attribute__((used)) static long FUNC10(struct zcrypt_device *zdev,
				    char *buffer)
{
	struct ap_message ap_msg;
	struct response_type resp_type = {
		.type = PCIXCC_RESPONSE_TYPE_XCRB,
	};
	int rc;

	FUNC1(&ap_msg);
	ap_msg.message = FUNC7(MSGTYPE06_MAX_MSG_SIZE, GFP_KERNEL);
	if (!ap_msg.message)
		return -ENOMEM;
	ap_msg.receive = zcrypt_msgtype6_receive;
	ap_msg.psmid = (((unsigned long long) current->pid) << 32) +
				FUNC3(&zcrypt_step);
	ap_msg.private = &resp_type;
	FUNC8(zdev->ap_dev, &ap_msg, ZCRYPT_RNG_BUFFER_SIZE);
	FUNC5(&resp_type.work);
	FUNC2(zdev->ap_dev, &ap_msg);
	rc = FUNC9(&resp_type.work);
	if (rc == 0)
		rc = FUNC4(zdev, &ap_msg, buffer);
	else
		/* Signal pending. */
		FUNC0(zdev->ap_dev, &ap_msg);
	FUNC6(ap_msg.message);
	return rc;
}