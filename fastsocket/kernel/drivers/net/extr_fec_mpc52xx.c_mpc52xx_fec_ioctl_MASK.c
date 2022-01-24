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
struct mpc52xx_fec_priv {int /*<<< orphan*/  phydev; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*) ; 
 struct mpc52xx_fec_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct mpc52xx_fec_priv *priv = FUNC1(dev);

	if (!priv->phydev)
		return -ENOTSUPP;

	return FUNC2(priv->phydev, FUNC0(rq), cmd);
}