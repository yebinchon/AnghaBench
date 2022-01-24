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
struct ipw2100_priv {int status; int /*<<< orphan*/  action_mutex; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_LONG_PREAMBLE ; 
 int EINVAL ; 
 int EIO ; 
 int STATUS_INITIALIZED ; 
 int FUNC0 (struct ipw2100_priv*,int /*<<< orphan*/ ) ; 
 struct ipw2100_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				   struct iw_request_info *info,
				   union iwreq_data *wrqu, char *extra)
{
	struct ipw2100_priv *priv = FUNC1(dev);
	int err, mode = *(int *)extra;

	FUNC2(&priv->action_mutex);
	if (!(priv->status & STATUS_INITIALIZED)) {
		err = -EIO;
		goto done;
	}

	if (mode == 1)
		priv->config |= CFG_LONG_PREAMBLE;
	else if (mode == 0)
		priv->config &= ~CFG_LONG_PREAMBLE;
	else {
		err = -EINVAL;
		goto done;
	}

	err = FUNC0(priv, 0);

      done:
	FUNC3(&priv->action_mutex);
	return err;
}