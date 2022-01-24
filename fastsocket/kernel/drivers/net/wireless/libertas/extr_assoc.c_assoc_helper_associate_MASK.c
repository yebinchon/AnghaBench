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
struct lbs_private {int dummy; } ;
struct assoc_request {int /*<<< orphan*/  flags; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_FLAG_BSSID ; 
 int /*<<< orphan*/  ASSOC_FLAG_SSID ; 
 int /*<<< orphan*/  LBS_DEB_ASSOC ; 
 int FUNC0 (struct lbs_private*,struct assoc_request*) ; 
 int FUNC1 (struct lbs_private*,struct assoc_request*) ; 
 int /*<<< orphan*/  bssid_any ; 
 int /*<<< orphan*/  bssid_off ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct lbs_private *priv,
                                  struct assoc_request * assoc_req)
{
	int ret = 0, done = 0;

	FUNC3(LBS_DEB_ASSOC);

	/* If we're given and 'any' BSSID, try associating based on SSID */

	if (FUNC5(ASSOC_FLAG_BSSID, &assoc_req->flags)) {
		if (FUNC2(bssid_any, assoc_req->bssid)
		    && FUNC2(bssid_off, assoc_req->bssid)) {
			ret = FUNC0(priv, assoc_req);
			done = 1;
		}
	}

	if (!done && FUNC5(ASSOC_FLAG_SSID, &assoc_req->flags)) {
		ret = FUNC1(priv, assoc_req);
	}

	FUNC4(LBS_DEB_ASSOC, "ret %d", ret);
	return ret;
}