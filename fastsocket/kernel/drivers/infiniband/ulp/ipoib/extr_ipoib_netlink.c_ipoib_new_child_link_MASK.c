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
typedef  int u16 ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int pkey; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t IFLA_IPOIB_PKEY ; 
 size_t IFLA_LINK ; 
 int /*<<< orphan*/  IPOIB_FLAG_SUBINTERFACE ; 
 int /*<<< orphan*/  IPOIB_RTNL_CHILD ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ipoib_dev_priv*,struct ipoib_dev_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC2 (struct net_device*,struct nlattr**,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*) ; 
 struct ipoib_dev_priv* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev,
			       struct nlattr *tb[], struct nlattr *data[])
{
	struct net_device *pdev;
	struct ipoib_dev_priv *ppriv;
	u16 child_pkey;
	int err;

	if (!tb[IFLA_LINK])
		return -EINVAL;

	pdev = FUNC0(&init_net, FUNC7(tb[IFLA_LINK]));
	if (!pdev)
		return -ENODEV;

	ppriv = FUNC5(pdev);

	if (FUNC8(IPOIB_FLAG_SUBINTERFACE, &ppriv->flags)) {
		FUNC4(ppriv, "child creation disallowed for child devices\n");
		return -EINVAL;
	}

	if (!data || !data[IFLA_IPOIB_PKEY]) {
		FUNC3(ppriv, "no pkey specified, using parent pkey\n");
		child_pkey  = ppriv->pkey;
	} else
		child_pkey  = FUNC6(data[IFLA_IPOIB_PKEY]);

	if (child_pkey == 0 || child_pkey == 0x8000)
		return -EINVAL;

	/*
	 * Set the full membership bit, so that we join the right
	 * broadcast group, etc.
	 */
	child_pkey |= 0x8000;

	err = FUNC1(ppriv, FUNC5(dev), child_pkey, IPOIB_RTNL_CHILD);

	if (!err && data)
		err = FUNC2(dev, tb, data);
	return err;
}