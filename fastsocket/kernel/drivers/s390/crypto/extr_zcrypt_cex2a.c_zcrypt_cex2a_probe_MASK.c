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
struct zcrypt_device {char* type_string; int short_crt; int online; int /*<<< orphan*/  ops; int /*<<< orphan*/  reply; struct ap_device* ap_dev; int /*<<< orphan*/  speed_rating; void* max_exp_bit_length; void* max_mod_size; void* min_mod_size; int /*<<< orphan*/  user_space_type; } ;
struct ap_device {int device_type; struct zcrypt_device* private; int /*<<< orphan*/ * reply; int /*<<< orphan*/  functions; } ;

/* Variables and functions */
#define  AP_DEVICE_TYPE_CEX2A 129 
#define  AP_DEVICE_TYPE_CEX3A 128 
 int /*<<< orphan*/  AP_FUNC_CRT4K ; 
 int /*<<< orphan*/  AP_FUNC_MEX4K ; 
 void* CEX2A_MAX_MOD_SIZE ; 
 int /*<<< orphan*/  CEX2A_MAX_RESPONSE_SIZE ; 
 void* CEX2A_MIN_MOD_SIZE ; 
 int /*<<< orphan*/  CEX2A_SPEED_RATING ; 
 void* CEX3A_MAX_MOD_SIZE ; 
 int /*<<< orphan*/  CEX3A_MAX_RESPONSE_SIZE ; 
 int /*<<< orphan*/  CEX3A_SPEED_RATING ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MSGTYPE50_NAME ; 
 int /*<<< orphan*/  MSGTYPE50_VARIANT_DEFAULT ; 
 int /*<<< orphan*/  ZCRYPT_CEX2A ; 
 int /*<<< orphan*/  ZCRYPT_CEX3A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct zcrypt_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zcrypt_device*) ; 
 int FUNC3 (struct zcrypt_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ap_device *ap_dev)
{
	struct zcrypt_device *zdev = NULL;
	int rc = 0;

	switch (ap_dev->device_type) {
	case AP_DEVICE_TYPE_CEX2A:
		zdev = FUNC1(CEX2A_MAX_RESPONSE_SIZE);
		if (!zdev)
			return -ENOMEM;
		zdev->user_space_type = ZCRYPT_CEX2A;
		zdev->type_string = "CEX2A";
		zdev->min_mod_size = CEX2A_MIN_MOD_SIZE;
		zdev->max_mod_size = CEX2A_MAX_MOD_SIZE;
		zdev->short_crt = 1;
		zdev->speed_rating = CEX2A_SPEED_RATING;
		zdev->max_exp_bit_length = CEX2A_MAX_MOD_SIZE;
		break;
	case AP_DEVICE_TYPE_CEX3A:
		zdev = FUNC1(CEX3A_MAX_RESPONSE_SIZE);
		if (!zdev)
			return -ENOMEM;
		zdev->user_space_type = ZCRYPT_CEX3A;
		zdev->type_string = "CEX3A";
		zdev->min_mod_size = CEX2A_MIN_MOD_SIZE;
		zdev->max_mod_size = CEX2A_MAX_MOD_SIZE;
		zdev->max_exp_bit_length = CEX2A_MAX_MOD_SIZE;
		if (FUNC0(&ap_dev->functions, AP_FUNC_MEX4K) &&
		    FUNC0(&ap_dev->functions, AP_FUNC_CRT4K)) {
			zdev->max_mod_size = CEX3A_MAX_MOD_SIZE;
			zdev->max_exp_bit_length = CEX3A_MAX_MOD_SIZE;
		}
		zdev->short_crt = 1;
		zdev->speed_rating = CEX3A_SPEED_RATING;
		break;
	}
	if (!zdev)
		return -ENODEV;
	zdev->ops = FUNC5(MSGTYPE50_NAME,
					   MSGTYPE50_VARIANT_DEFAULT);
	zdev->ap_dev = ap_dev;
	zdev->online = 1;
	ap_dev->reply = &zdev->reply;
	ap_dev->private = zdev;
	rc = FUNC3(zdev);
	if (rc) {
		ap_dev->private = NULL;
		FUNC4(zdev->ops);
		FUNC2(zdev);
	}
	return rc;
}