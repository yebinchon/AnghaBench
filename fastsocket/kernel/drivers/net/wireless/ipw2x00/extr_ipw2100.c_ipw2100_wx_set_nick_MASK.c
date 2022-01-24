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
struct TYPE_2__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int /*<<< orphan*/  nick; } ;

/* Variables and functions */
 int E2BIG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IW_ESSID_MAX_SIZE ; 
 struct ipw2100_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (size_t,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			       struct iw_request_info *info,
			       union iwreq_data *wrqu, char *extra)
{
	/*
	 * This can be called at any time.  No action lock required
	 */

	struct ipw2100_priv *priv = FUNC1(dev);

	if (wrqu->data.length > IW_ESSID_MAX_SIZE)
		return -E2BIG;

	wrqu->data.length = FUNC4((size_t) wrqu->data.length, sizeof(priv->nick));
	FUNC3(priv->nick, 0, sizeof(priv->nick));
	FUNC2(priv->nick, extra, wrqu->data.length);

	FUNC0("SET Nickname -> %s\n", priv->nick);

	return 0;
}