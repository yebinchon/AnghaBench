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
struct ipw_priv {int config; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int CFG_PREAMBLE_LONG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*) ; 
 struct ipw_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			       struct iw_request_info *info,
			       union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC3(dev);
	int mode = *(int *)extra;
	FUNC4(&priv->mutex);
	/* Switching from SHORT -> LONG requires a disassociation */
	if (mode == 1) {
		if (!(priv->config & CFG_PREAMBLE_LONG)) {
			priv->config |= CFG_PREAMBLE_LONG;

			/* Network configuration changed -- force [re]association */
			FUNC0
			    ("[re]association triggered due to preamble change.\n");
			if (!FUNC2(priv))
				FUNC1(priv);
		}
		goto done;
	}

	if (mode == 0) {
		priv->config &= ~CFG_PREAMBLE_LONG;
		goto done;
	}
	FUNC5(&priv->mutex);
	return -EINVAL;

      done:
	FUNC5(&priv->mutex);
	return 0;
}