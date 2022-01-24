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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct ipw2100_priv {int /*<<< orphan*/  action_mutex; TYPE_1__ reset_work; scalar_t__ reset_backoff; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_CUSTOM_MAC ; 
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ipw2100_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ipw2100_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, void *p)
{
	struct ipw2100_priv *priv = FUNC3(dev);
	struct sockaddr *addr = p;
	int err = 0;

	if (!FUNC2(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC5(&priv->action_mutex);

	priv->config |= CFG_CUSTOM_MAC;
	FUNC4(priv->mac_addr, addr->sa_data, ETH_ALEN);

	err = FUNC1(priv, 0);
	if (err)
		goto done;

	priv->reset_backoff = 0;
	FUNC6(&priv->action_mutex);
	FUNC0(&priv->reset_work.work);
	return 0;

      done:
	FUNC6(&priv->action_mutex);
	return err;
}