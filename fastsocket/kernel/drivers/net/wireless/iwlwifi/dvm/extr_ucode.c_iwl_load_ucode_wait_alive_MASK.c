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
struct iwl_priv {int cur_ucode; int ucode_loaded; int /*<<< orphan*/  notif_wait; int /*<<< orphan*/  trans; } ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_alive_data {int /*<<< orphan*/  valid; } ;
struct fw_img {int dummy; } ;
typedef  enum iwl_ucode_type { ____Placeholder_iwl_ucode_type } iwl_ucode_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 int IWL_UCODE_WOWLAN ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*,int) ; 
#define  REPLY_ALIVE 128 
 int /*<<< orphan*/  UCODE_ALIVE_TIMEOUT ; 
 int /*<<< orphan*/  iwl_alive_fn ; 
 int FUNC3 (struct iwl_priv*) ; 
 struct fw_img* FUNC4 (struct iwl_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_alive_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct iwl_notification_wait*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct fw_img const*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(struct iwl_priv *priv,
				 enum iwl_ucode_type ucode_type)
{
	struct iwl_notification_wait alive_wait;
	struct iwl_alive_data alive_data;
	const struct fw_img *fw;
	int ret;
	enum iwl_ucode_type old_type;
	static const u8 alive_cmd[] = { REPLY_ALIVE };

	old_type = priv->cur_ucode;
	priv->cur_ucode = ucode_type;
	fw = FUNC4(priv, ucode_type);

	priv->ucode_loaded = false;

	if (!fw)
		return -EINVAL;

	FUNC5(&priv->notif_wait, &alive_wait,
				   alive_cmd, FUNC0(alive_cmd),
				   iwl_alive_fn, &alive_data);

	ret = FUNC7(priv->trans, fw, false);
	if (ret) {
		priv->cur_ucode = old_type;
		FUNC6(&priv->notif_wait, &alive_wait);
		return ret;
	}

	/*
	 * Some things may run in the background now, but we
	 * just wait for the ALIVE notification here.
	 */
	ret = FUNC8(&priv->notif_wait, &alive_wait,
					UCODE_ALIVE_TIMEOUT);
	if (ret) {
		priv->cur_ucode = old_type;
		return ret;
	}

	if (!alive_data.valid) {
		FUNC1(priv, "Loaded ucode is not valid!\n");
		priv->cur_ucode = old_type;
		return -EIO;
	}

	priv->ucode_loaded = true;

	if (ucode_type != IWL_UCODE_WOWLAN) {
		/* delay a bit to give rfkill time to run */
		FUNC9(5);
	}

	ret = FUNC3(priv);
	if (ret) {
		FUNC2(priv,
			"Could not complete ALIVE transition: %d\n", ret);
		priv->cur_ucode = old_type;
		return ret;
	}

	return 0;
}