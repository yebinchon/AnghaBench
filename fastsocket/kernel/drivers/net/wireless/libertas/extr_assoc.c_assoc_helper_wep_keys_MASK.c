#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lbs_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  wep_tx_keyidx; int /*<<< orphan*/ * wep_keys; int /*<<< orphan*/  mac_control; } ;
struct enc_key {int dummy; } ;
struct TYPE_3__ {scalar_t__ wep_enabled; } ;
struct assoc_request {int /*<<< orphan*/  wep_tx_keyidx; TYPE_2__* wep_keys; TYPE_1__ secinfo; } ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACT_ADD ; 
 int /*<<< orphan*/  CMD_ACT_MAC_WEP_ENABLE ; 
 int /*<<< orphan*/  CMD_ACT_REMOVE ; 
 int /*<<< orphan*/  LBS_DEB_ASSOC ; 
 int FUNC0 (struct lbs_private*,int /*<<< orphan*/ ,struct assoc_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct lbs_private *priv,
				 struct assoc_request *assoc_req)
{
	int i;
	int ret = 0;

	FUNC1(LBS_DEB_ASSOC);

	/* Set or remove WEP keys */
	if (assoc_req->wep_keys[0].len || assoc_req->wep_keys[1].len ||
	    assoc_req->wep_keys[2].len || assoc_req->wep_keys[3].len)
		ret = FUNC0(priv, CMD_ACT_ADD, assoc_req);
	else
		ret = FUNC0(priv, CMD_ACT_REMOVE, assoc_req);

	if (ret)
		goto out;

	/* enable/disable the MAC's WEP packet filter */
	if (assoc_req->secinfo.wep_enabled)
		priv->mac_control |= CMD_ACT_MAC_WEP_ENABLE;
	else
		priv->mac_control &= ~CMD_ACT_MAC_WEP_ENABLE;

	FUNC3(priv);

	FUNC5(&priv->lock);

	/* Copy WEP keys into priv wep key fields */
	for (i = 0; i < 4; i++) {
		FUNC4(&priv->wep_keys[i], &assoc_req->wep_keys[i],
		       sizeof(struct enc_key));
	}
	priv->wep_tx_keyidx = assoc_req->wep_tx_keyidx;

	FUNC6(&priv->lock);

out:
	FUNC2(LBS_DEB_ASSOC, "ret %d", ret);
	return ret;
}