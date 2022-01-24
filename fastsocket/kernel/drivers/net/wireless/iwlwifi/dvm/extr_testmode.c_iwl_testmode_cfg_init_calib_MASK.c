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
struct iwl_priv {int /*<<< orphan*/  notif_wait; } ;
struct iwl_notification_wait {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
#define  CALIBRATION_COMPLETE_NOTIFICATION 128 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,int) ; 
 int FUNC2 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct iwl_notification_wait*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int) ; 

__attribute__((used)) static int FUNC6(struct iwl_priv *priv)
{
	struct iwl_notification_wait calib_wait;
	static const u8 calib_complete[] = {
		CALIBRATION_COMPLETE_NOTIFICATION
	};
	int ret;

	FUNC3(&priv->notif_wait, &calib_wait,
				   calib_complete, FUNC0(calib_complete),
				   NULL, NULL);
	ret = FUNC2(priv);
	if (ret) {
		FUNC1(priv, "Fail init calibration: %d\n", ret);
		goto cfg_init_calib_error;
	}

	ret = FUNC5(&priv->notif_wait, &calib_wait, 2 * HZ);
	if (ret)
		FUNC1(priv, "Error detecting"
			" CALIBRATION_COMPLETE_NOTIFICATION: %d\n", ret);
	return ret;

cfg_init_calib_error:
	FUNC4(&priv->notif_wait, &calib_wait);
	return ret;
}