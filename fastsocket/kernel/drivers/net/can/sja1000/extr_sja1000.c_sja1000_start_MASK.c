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
struct TYPE_2__ {scalar_t__ state; } ;
struct sja1000_priv {int /*<<< orphan*/  (* read_reg ) (struct sja1000_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_reg ) (struct sja1000_priv*,int /*<<< orphan*/ ,int) ;TYPE_1__ can; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CAN_STATE_STOPPED ; 
 int /*<<< orphan*/  REG_ECC ; 
 int /*<<< orphan*/  REG_RXERR ; 
 int /*<<< orphan*/  REG_TXERR ; 
 struct sja1000_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sja1000_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sja1000_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct sja1000_priv *priv = FUNC0(dev);

	/* leave reset mode */
	if (priv->can.state != CAN_STATE_STOPPED)
		FUNC2(dev);

	/* Clear error counters and error code capture */
	priv->write_reg(priv, REG_TXERR, 0x0);
	priv->write_reg(priv, REG_RXERR, 0x0);
	priv->read_reg(priv, REG_ECC);

	/* leave reset mode */
	FUNC1(dev);
}