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
typedef  int u8 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  radio_on; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; int /*<<< orphan*/  flags; } ;
struct assoc_request {int ssid_len; int /*<<< orphan*/  flags; int /*<<< orphan*/  ssid; } ;
typedef  int /*<<< orphan*/  ssid ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_FLAG_SSID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int E2BIG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct assoc_request* FUNC5 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC7 (int**,...) ; 
 int /*<<< orphan*/  FUNC8 (int**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssid_buf ; 

__attribute__((used)) static int FUNC13(struct net_device *dev, struct iw_request_info *info,
		   struct iw_point *dwrq, char *extra)
{
	struct lbs_private *priv = dev->ml_priv;
	int ret = 0;
	u8 ssid[IW_ESSID_MAX_SIZE];
	u8 ssid_len = 0;
	struct assoc_request * assoc_req;
	int in_ssid_len = dwrq->length;
	FUNC0(ssid_buf);

	FUNC2(LBS_DEB_WEXT);

	if (!priv->radio_on) {
		ret = -EINVAL;
		goto out;
	}

	/* Check the size of the string */
	if (in_ssid_len > IW_ESSID_MAX_SIZE) {
		ret = -E2BIG;
		goto out;
	}

	FUNC8(&ssid, 0, sizeof(ssid));

	if (!dwrq->flags || !in_ssid_len) {
		/* "any" SSID requested; leave SSID blank */
	} else {
		/* Specific SSID requested */
		FUNC7(&ssid, extra, in_ssid_len);
		ssid_len = in_ssid_len;
	}

	if (!ssid_len) {
		FUNC4("requested any SSID\n");
	} else {
		FUNC4("requested SSID '%s'\n",
		             FUNC11(ssid_buf, ssid, ssid_len));
	}

out:
	FUNC9(&priv->lock);
	if (ret == 0) {
		/* Get or create the current association request */
		assoc_req = FUNC5(priv);
		if (!assoc_req) {
			ret = -ENOMEM;
		} else {
			/* Copy the SSID to the association request */
			FUNC7(&assoc_req->ssid, &ssid, IW_ESSID_MAX_SIZE);
			assoc_req->ssid_len = ssid_len;
			FUNC12(ASSOC_FLAG_SSID, &assoc_req->flags);
			FUNC6(priv);
		}
	}

	/* Cancel the association request if there was an error */
	if (ret != 0) {
		FUNC1(priv);
	}

	FUNC10(&priv->lock);

	FUNC3(LBS_DEB_WEXT, "ret %d", ret);
	return ret;
}