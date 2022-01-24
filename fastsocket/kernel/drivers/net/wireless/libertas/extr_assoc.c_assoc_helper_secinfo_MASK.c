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
typedef  int uint16_t ;
struct lbs_private {int /*<<< orphan*/  secinfo; } ;
struct lbs_802_11_security {int dummy; } ;
struct TYPE_2__ {scalar_t__ WPA2enabled; scalar_t__ WPAenabled; } ;
struct assoc_request {TYPE_1__ secinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACT_GET ; 
 int /*<<< orphan*/  CMD_ACT_SET ; 
 int /*<<< orphan*/  LBS_DEB_ASSOC ; 
 int FUNC0 (struct lbs_private*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC6(struct lbs_private *priv,
                                struct assoc_request * assoc_req)
{
	int ret = 0;
	uint16_t do_wpa;
	uint16_t rsn = 0;

	FUNC2(LBS_DEB_ASSOC);

	FUNC5(&priv->secinfo, &assoc_req->secinfo,
		sizeof(struct lbs_802_11_security));

	FUNC4(priv);

	/* If RSN is already enabled, don't try to enable it again, since
	 * ENABLE_RSN resets internal state machines and will clobber the
	 * 4-way WPA handshake.
	 */

	/* Get RSN enabled/disabled */
	ret = FUNC0(priv, CMD_ACT_GET, &rsn);
	if (ret) {
		FUNC1("Failed to get RSN status: %d\n", ret);
		goto out;
	}

	/* Don't re-enable RSN if it's already enabled */
	do_wpa = assoc_req->secinfo.WPAenabled || assoc_req->secinfo.WPA2enabled;
	if (do_wpa == rsn)
		goto out;

	/* Set RSN enabled/disabled */
	ret = FUNC0(priv, CMD_ACT_SET, &do_wpa);

out:
	FUNC3(LBS_DEB_ASSOC, "ret %d", ret);
	return ret;
}