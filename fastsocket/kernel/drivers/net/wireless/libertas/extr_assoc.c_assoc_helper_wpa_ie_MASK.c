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
struct lbs_private {scalar_t__ wpa_ie_len; int /*<<< orphan*/  wpa_ie; } ;
struct TYPE_2__ {scalar_t__ WPA2enabled; scalar_t__ WPAenabled; } ;
struct assoc_request {scalar_t__ wpa_ie_len; int /*<<< orphan*/  wpa_ie; TYPE_1__ secinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_ASSOC ; 
 int /*<<< orphan*/  MAX_WPA_IE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct lbs_private *priv,
                               struct assoc_request * assoc_req)
{
	int ret = 0;

	FUNC0(LBS_DEB_ASSOC);

	if (assoc_req->secinfo.WPAenabled || assoc_req->secinfo.WPA2enabled) {
		FUNC2(&priv->wpa_ie, &assoc_req->wpa_ie, assoc_req->wpa_ie_len);
		priv->wpa_ie_len = assoc_req->wpa_ie_len;
	} else {
		FUNC3(&priv->wpa_ie, 0, MAX_WPA_IE_LEN);
		priv->wpa_ie_len = 0;
	}

	FUNC1(LBS_DEB_ASSOC, "ret %d", ret);
	return ret;
}