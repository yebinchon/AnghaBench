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
struct ica_rsa_modexpo {int /*<<< orphan*/  outputdatalength; int /*<<< orphan*/  outputdata; } ;
struct ap_message {void* message; struct response_type* private; scalar_t__ psmid; int /*<<< orphan*/  receive; } ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 long ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct zcrypt_device*,struct ap_message*,struct ica_rsa_modexpo*) ; 
 int /*<<< orphan*/  PCIXCC_RESPONSE_TYPE_ICA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ap_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct ap_message*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ap_message*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct zcrypt_device*,struct ap_message*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zcrypt_msgtype6_receive ; 
 int /*<<< orphan*/  zcrypt_step ; 

__attribute__((used)) static long FUNC10(struct zcrypt_device *zdev,
				  struct ica_rsa_modexpo *mex)
{
	struct ap_message ap_msg;
	struct response_type resp_type = {
		.type = PCIXCC_RESPONSE_TYPE_ICA,
	};
	int rc;

	FUNC2(&ap_msg);
	ap_msg.message = (void *) FUNC7(GFP_KERNEL);
	if (!ap_msg.message)
		return -ENOMEM;
	ap_msg.receive = zcrypt_msgtype6_receive;
	ap_msg.psmid = (((unsigned long long) current->pid) << 32) +
				FUNC4(&zcrypt_step);
	ap_msg.private = &resp_type;
	rc = FUNC0(zdev, &ap_msg, mex);
	if (rc)
		goto out_free;
	FUNC8(&resp_type.work);
	FUNC3(zdev->ap_dev, &ap_msg);
	rc = FUNC9(&resp_type.work);
	if (rc == 0)
		rc = FUNC5(zdev, &ap_msg, mex->outputdata,
					  mex->outputdatalength);
	else
		/* Signal pending. */
		FUNC1(zdev->ap_dev, &ap_msg);
out_free:
	FUNC6((unsigned long) ap_msg.message);
	return rc;
}