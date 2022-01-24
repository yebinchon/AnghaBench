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
struct bss_descriptor {int dummy; } ;
struct assoc_request {int bssid; scalar_t__ mode; int /*<<< orphan*/  bss; } ;

/* Variables and functions */
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ IW_MODE_INFRA ; 
 int /*<<< orphan*/  LBS_DEB_ASSOC ; 
 int /*<<< orphan*/  FUNC0 (struct lbs_private*,struct assoc_request*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct bss_descriptor* FUNC4 (struct lbs_private*,int,scalar_t__) ; 
 int FUNC5 (struct lbs_private*,struct assoc_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct bss_descriptor*,int) ; 

__attribute__((used)) static int FUNC7(struct lbs_private *priv,
                              struct assoc_request * assoc_req)
{
	int ret = 0;
	struct bss_descriptor * bss;

	FUNC2(LBS_DEB_ASSOC, "BSSID %pM", assoc_req->bssid);

	/* Search for index position in list for requested MAC */
	bss = FUNC4(priv, assoc_req->bssid,
			    assoc_req->mode);
	if (bss == NULL) {
		FUNC1("ASSOC: WAP: BSSID %pM not found, "
			"cannot associate.\n", assoc_req->bssid);
		goto out;
	}

	FUNC6(&assoc_req->bss, bss, sizeof(struct bss_descriptor));
	if (assoc_req->mode == IW_MODE_INFRA) {
		ret = FUNC5(priv, assoc_req);
		FUNC1("ASSOC: lbs_try_associate(bssid) returned %d\n",
			      ret);
	} else if (assoc_req->mode == IW_MODE_ADHOC) {
		FUNC0(priv, assoc_req);
	}

out:
	FUNC3(LBS_DEB_ASSOC, "ret %d", ret);
	return ret;
}