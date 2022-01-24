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
union iwreq_data {int /*<<< orphan*/  name; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int config; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int CFG_PREAMBLE_LONG ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 struct ipw_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			       struct iw_request_info *info,
			       union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC0(dev);
	FUNC1(&priv->mutex);
	if (priv->config & CFG_PREAMBLE_LONG)
		FUNC3(wrqu->name, IFNAMSIZ, "long (1)");
	else
		FUNC3(wrqu->name, IFNAMSIZ, "auto (0)");
	FUNC2(&priv->mutex);
	return 0;
}