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
struct ica_rsa_modexpo_crt {int /*<<< orphan*/  outputdatalength; int /*<<< orphan*/  outputdata; } ;
struct completion {int dummy; } ;
struct ap_message {int /*<<< orphan*/  message; struct completion* private; scalar_t__ psmid; int /*<<< orphan*/  receive; } ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 long ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct zcrypt_device*,struct ap_message*,struct ica_rsa_modexpo_crt*) ; 
 int /*<<< orphan*/  PCICA_MAX_MESSAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ap_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct ap_message*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ap_message*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct zcrypt_device*,struct ap_message*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC6 (struct completion*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct completion*) ; 
 int /*<<< orphan*/  zcrypt_pcica_receive ; 
 int /*<<< orphan*/  zcrypt_step ; 

__attribute__((used)) static long FUNC10(struct zcrypt_device *zdev,
				     struct ica_rsa_modexpo_crt *crt)
{
	struct ap_message ap_msg;
	struct completion work;
	int rc;

	FUNC2(&ap_msg);
	ap_msg.message = FUNC8(PCICA_MAX_MESSAGE_SIZE, GFP_KERNEL);
	if (!ap_msg.message)
		return -ENOMEM;
	ap_msg.receive = zcrypt_pcica_receive;
	ap_msg.psmid = (((unsigned long long) current->pid) << 32) +
				FUNC4(&zcrypt_step);
	ap_msg.private = &work;
	rc = FUNC0(zdev, &ap_msg, crt);
	if (rc)
		goto out_free;
	FUNC6(&work);
	FUNC3(zdev->ap_dev, &ap_msg);
	rc = FUNC9(&work);
	if (rc == 0)
		rc = FUNC5(zdev, &ap_msg, crt->outputdata,
				      crt->outputdatalength);
	else
		/* Signal pending. */
		FUNC1(zdev->ap_dev, &ap_msg);
out_free:
	FUNC7(ap_msg.message);
	return rc;
}