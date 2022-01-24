#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ipw2100_priv {int status; TYPE_3__* ieee; } ;
struct TYPE_5__ {int flags; scalar_t__ auth_mode; int level; int unicast_uses_group; scalar_t__ enabled; scalar_t__* key_sizes; int /*<<< orphan*/ * keys; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_keyidx; } ;
struct TYPE_6__ {TYPE_2__ sec; TYPE_1__ crypt_info; } ;

/* Variables and functions */
 int IPW_AUTH_LEAP_CISCO_ID ; 
 int IPW_AUTH_OPEN ; 
 int IPW_AUTH_SHARED ; 
 int /*<<< orphan*/  IPW_PRIVACY_CAPABLE ; 
 int SEC_AUTH_MODE ; 
 int SEC_LEVEL ; 
 int SEC_LEVEL_0 ; 
 int SEC_UNICAST_GROUP ; 
 int STATUS_RUNNING ; 
 int STATUS_SECURITY_UPDATED ; 
 int /*<<< orphan*/  WEP_KEY_LEN ; 
 scalar_t__ WLAN_AUTH_LEAP ; 
 scalar_t__ WLAN_AUTH_SHARED_KEY ; 
 int FUNC0 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw2100_priv*) ; 
 int FUNC2 (struct ipw2100_priv*,int,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw2100_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ipw2100_priv*,int,int,int,int) ; 
 int FUNC5 (struct ipw2100_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ipw2100_priv *priv, int batch_mode)
{
	int i, err, auth_mode, sec_level, use_group;

	if (!(priv->status & STATUS_RUNNING))
		return 0;

	if (!batch_mode) {
		err = FUNC0(priv);
		if (err)
			return err;
	}

	if (!priv->ieee->sec.enabled) {
		err =
		    FUNC4(priv, IPW_AUTH_OPEN,
						     SEC_LEVEL_0, 0, 1);
	} else {
		auth_mode = IPW_AUTH_OPEN;
		if (priv->ieee->sec.flags & SEC_AUTH_MODE) {
			if (priv->ieee->sec.auth_mode == WLAN_AUTH_SHARED_KEY)
				auth_mode = IPW_AUTH_SHARED;
			else if (priv->ieee->sec.auth_mode == WLAN_AUTH_LEAP)
				auth_mode = IPW_AUTH_LEAP_CISCO_ID;
		}

		sec_level = SEC_LEVEL_0;
		if (priv->ieee->sec.flags & SEC_LEVEL)
			sec_level = priv->ieee->sec.level;

		use_group = 0;
		if (priv->ieee->sec.flags & SEC_UNICAST_GROUP)
			use_group = priv->ieee->sec.unicast_uses_group;

		err =
		    FUNC4(priv, auth_mode, sec_level,
						     use_group, 1);
	}

	if (err)
		goto exit;

	if (priv->ieee->sec.enabled) {
		for (i = 0; i < 4; i++) {
			if (!(priv->ieee->sec.flags & (1 << i))) {
				FUNC6(priv->ieee->sec.keys[i], 0, WEP_KEY_LEN);
				priv->ieee->sec.key_sizes[i] = 0;
			} else {
				err = FUNC2(priv, i,
						      priv->ieee->sec.keys[i],
						      priv->ieee->sec.
						      key_sizes[i], 1);
				if (err)
					goto exit;
			}
		}

		FUNC3(priv, priv->ieee->crypt_info.tx_keyidx, 1);
	}

	/* Always enable privacy so the Host can filter WEP packets if
	 * encrypted data is sent up */
	err =
	    FUNC5(priv,
				  priv->ieee->sec.
				  enabled ? IPW_PRIVACY_CAPABLE : 0, 1);
	if (err)
		goto exit;

	priv->status &= ~STATUS_SECURITY_UPDATED;

      exit:
	if (!batch_mode)
		FUNC1(priv);

	return err;
}