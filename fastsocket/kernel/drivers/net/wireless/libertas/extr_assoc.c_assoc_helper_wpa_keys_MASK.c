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
struct lbs_private {int /*<<< orphan*/  wpa_mcast_key; int /*<<< orphan*/  wpa_unicast_key; } ;
struct enc_key {int dummy; } ;
struct assoc_request {unsigned int flags; int /*<<< orphan*/  wpa_mcast_key; int /*<<< orphan*/  wpa_unicast_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_FLAG_WPA_MCAST_KEY ; 
 int /*<<< orphan*/  ASSOC_FLAG_WPA_UCAST_KEY ; 
 int /*<<< orphan*/  CMD_ACT_SET ; 
 int /*<<< orphan*/  LBS_DEB_ASSOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct assoc_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct lbs_private *priv,
                                 struct assoc_request * assoc_req)
{
	int ret = 0;
	unsigned int flags = assoc_req->flags;

	FUNC2(LBS_DEB_ASSOC);

	/* Work around older firmware bug where WPA unicast and multicast
	 * keys must be set independently.  Seen in SDIO parts with firmware
	 * version 5.0.11p0.
	 */

	if (FUNC5(ASSOC_FLAG_WPA_UCAST_KEY, &assoc_req->flags)) {
		FUNC0(ASSOC_FLAG_WPA_MCAST_KEY, &assoc_req->flags);
		ret = FUNC1(priv, CMD_ACT_SET, assoc_req);
		assoc_req->flags = flags;
	}

	if (ret)
		goto out;

	FUNC4(&priv->wpa_unicast_key, &assoc_req->wpa_unicast_key,
			sizeof(struct enc_key));

	if (FUNC5(ASSOC_FLAG_WPA_MCAST_KEY, &assoc_req->flags)) {
		FUNC0(ASSOC_FLAG_WPA_UCAST_KEY, &assoc_req->flags);

		ret = FUNC1(priv, CMD_ACT_SET, assoc_req);
		assoc_req->flags = flags;

		FUNC4(&priv->wpa_mcast_key, &assoc_req->wpa_mcast_key,
				sizeof(struct enc_key));
	}

out:
	FUNC3(LBS_DEB_ASSOC, "ret %d", ret);
	return ret;
}