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
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int status; int user_requested_scan; int /*<<< orphan*/  action_mutex; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int STATUS_INITIALIZED ; 
 scalar_t__ FUNC1 (struct ipw2100_priv*) ; 
 scalar_t__ FUNC2 (struct ipw2100_priv*) ; 
 struct ipw2100_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			       struct iw_request_info *info,
			       union iwreq_data *wrqu, char *extra)
{
	struct ipw2100_priv *priv = FUNC3(dev);
	int err = 0;

	FUNC4(&priv->action_mutex);
	if (!(priv->status & STATUS_INITIALIZED)) {
		err = -EIO;
		goto done;
	}

	FUNC0("Initiating scan...\n");

	priv->user_requested_scan = 1;
	if (FUNC1(priv) || FUNC2(priv)) {
		FUNC0("Start scan failed.\n");

		/* TODO: Mark a scan as pending so when hardware initialized
		 *       a scan starts */
	}

      done:
	FUNC5(&priv->action_mutex);
	return err;
}