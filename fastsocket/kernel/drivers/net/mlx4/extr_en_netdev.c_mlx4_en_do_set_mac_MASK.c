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
struct mlx4_en_priv {TYPE_1__* dev; int /*<<< orphan*/  prev_mac; int /*<<< orphan*/  base_qpn; scalar_t__ port_up; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlx4_en_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlx4_en_priv *priv)
{
	int err = 0;

	if (priv->port_up) {
		/* Remove old MAC and insert the new one */
		err = FUNC3(priv, priv->base_qpn,
					  priv->dev->dev_addr, priv->prev_mac);
		if (err)
			FUNC1(priv, "Failed changing HW MAC address\n");
		FUNC2(priv->prev_mac, priv->dev->dev_addr,
		       sizeof(priv->prev_mac));
	} else
		FUNC0(HW, priv, "Port is down while registering mac, exiting...\n");

	return err;
}