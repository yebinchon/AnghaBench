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
struct TYPE_3__ {scalar_t__ auth_mode; } ;
struct lbs_private {scalar_t__ connect_status; TYPE_1__ secinfo; } ;
struct TYPE_4__ {scalar_t__ auth_mode; } ;
struct assoc_request {scalar_t__ mode; int /*<<< orphan*/  flags; TYPE_2__ secinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_FLAG_BSSID ; 
 int /*<<< orphan*/  ASSOC_FLAG_CHANNEL ; 
 int /*<<< orphan*/  ASSOC_FLAG_MODE ; 
 int /*<<< orphan*/  ASSOC_FLAG_SECINFO ; 
 int /*<<< orphan*/  ASSOC_FLAG_SSID ; 
 scalar_t__ IW_MODE_INFRA ; 
 scalar_t__ LBS_CONNECTED ; 
 int /*<<< orphan*/  LBS_DEB_ASSOC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct lbs_private *priv,
                                        struct assoc_request * assoc_req)
{
	int ret = 0;

	if (priv->connect_status != LBS_CONNECTED)
		return 0;

	FUNC1(LBS_DEB_ASSOC);
	if (FUNC3(ASSOC_FLAG_SSID, &assoc_req->flags)) {
		FUNC0("Deauthenticating due to new SSID\n");
		ret = 1;
		goto out;
	}

	if (FUNC3(ASSOC_FLAG_SECINFO, &assoc_req->flags)) {
		if (priv->secinfo.auth_mode != assoc_req->secinfo.auth_mode) {
			FUNC0("Deauthenticating due to new security\n");
			ret = 1;
			goto out;
		}
	}

	if (FUNC3(ASSOC_FLAG_BSSID, &assoc_req->flags)) {
		FUNC0("Deauthenticating due to new BSSID\n");
		ret = 1;
		goto out;
	}

	if (FUNC3(ASSOC_FLAG_CHANNEL, &assoc_req->flags)) {
		FUNC0("Deauthenticating due to channel switch\n");
		ret = 1;
		goto out;
	}

	/* FIXME: deal with 'auto' mode somehow */
	if (FUNC3(ASSOC_FLAG_MODE, &assoc_req->flags)) {
		if (assoc_req->mode != IW_MODE_INFRA) {
			FUNC0("Deauthenticating due to leaving "
				"infra mode\n");
			ret = 1;
			goto out;
		}
	}

out:
	FUNC2(LBS_DEB_ASSOC, "ret %d", ret);
	return ret;
}