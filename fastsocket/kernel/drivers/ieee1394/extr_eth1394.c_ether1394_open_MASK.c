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
struct net_device {int dummy; } ;
struct eth1394_priv {scalar_t__ bc_state; } ;

/* Variables and functions */
 scalar_t__ ETHER1394_BC_ERROR ; 
 int FUNC0 (struct eth1394_priv*) ; 
 struct eth1394_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct eth1394_priv *priv = FUNC1(dev);
	int ret;

	if (priv->bc_state == ETHER1394_BC_ERROR) {
		ret = FUNC0(priv);
		if (ret)
			return ret;
	}
	FUNC2(dev);
	return 0;
}