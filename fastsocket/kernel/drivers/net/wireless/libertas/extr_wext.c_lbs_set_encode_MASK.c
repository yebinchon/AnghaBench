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
typedef  int u16 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int /*<<< orphan*/  lock; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; scalar_t__ length; } ;
struct TYPE_2__ {int /*<<< orphan*/  auth_mode; int /*<<< orphan*/  wep_enabled; } ;
struct assoc_request {int /*<<< orphan*/  flags; TYPE_1__ secinfo; int /*<<< orphan*/  wep_tx_keyidx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_FLAG_SECINFO ; 
 int /*<<< orphan*/  ASSOC_FLAG_WEP_KEYS ; 
 int /*<<< orphan*/  ASSOC_FLAG_WEP_TX_KEYIDX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IW_AUTH_ALG_OPEN_SYSTEM ; 
 int /*<<< orphan*/  IW_AUTH_ALG_SHARED_KEY ; 
 int IW_ENCODE_DISABLED ; 
 int IW_ENCODE_INDEX ; 
 int IW_ENCODE_OPEN ; 
 int IW_ENCODE_RESTRICTED ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (struct assoc_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct assoc_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct assoc_request* FUNC5 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct lbs_private*) ; 
 int FUNC7 (struct assoc_request*,char*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int*,int*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev,
		    struct iw_request_info *info,
		    struct iw_point *dwrq, char *extra)
{
	int ret = 0;
	struct lbs_private *priv = dev->ml_priv;
	struct assoc_request * assoc_req;
	u16 is_default = 0, index = 0, set_tx_key = 0;

	FUNC3(LBS_DEB_WEXT);

	FUNC8(&priv->lock);
	assoc_req = FUNC5(priv);
	if (!assoc_req) {
		ret = -ENOMEM;
		goto out;
	}

	if (dwrq->flags & IW_ENCODE_DISABLED) {
		FUNC0 (assoc_req);
		FUNC1 (assoc_req);
		goto out;
	}

	ret = FUNC11(assoc_req->wep_tx_keyidx,
	                         (dwrq->flags & IW_ENCODE_INDEX),
	                         &index, &is_default);
	if (ret) {
		ret = -EINVAL;
		goto out;
	}

	/* If WEP isn't enabled, or if there is no key data but a valid
	 * index, set the TX key.
	 */
	if (!assoc_req->secinfo.wep_enabled || (dwrq->length == 0 && !is_default))
		set_tx_key = 1;

	ret = FUNC7(assoc_req, extra, dwrq->length, index, set_tx_key);
	if (ret)
		goto out;

	if (dwrq->length)
		FUNC10(ASSOC_FLAG_WEP_KEYS, &assoc_req->flags);
	if (set_tx_key)
		FUNC10(ASSOC_FLAG_WEP_TX_KEYIDX, &assoc_req->flags);

	if (dwrq->flags & IW_ENCODE_RESTRICTED) {
		assoc_req->secinfo.auth_mode = IW_AUTH_ALG_SHARED_KEY;
	} else if (dwrq->flags & IW_ENCODE_OPEN) {
		assoc_req->secinfo.auth_mode = IW_AUTH_ALG_OPEN_SYSTEM;
	}

out:
	if (ret == 0) {
		FUNC10(ASSOC_FLAG_SECINFO, &assoc_req->flags);
		FUNC6(priv);
	} else {
		FUNC2(priv);
	}
	FUNC9(&priv->lock);

	FUNC4(LBS_DEB_WEXT, "ret %d", ret);
	return ret;
}