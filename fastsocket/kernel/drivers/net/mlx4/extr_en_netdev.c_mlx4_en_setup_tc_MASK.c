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
typedef  int u8 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {scalar_t__ num_tx_rings_p_up; } ;

/* Variables and functions */
 int EINVAL ; 
 int MLX4_EN_NUM_UP ; 
 struct mlx4_en_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,scalar_t__,unsigned int) ; 

int FUNC3(struct net_device *dev, u8 up)
{
	struct mlx4_en_priv *priv = FUNC0(dev);
	int i;
	unsigned int offset = 0;

	if (up && up != MLX4_EN_NUM_UP)
		return -EINVAL;

	FUNC1(dev, up);

	/* Partition Tx queues evenly amongst UP's */
	for (i = 0; i < up; i++) {
		FUNC2(dev, i, priv->num_tx_rings_p_up, offset);
		offset += priv->num_tx_rings_p_up;
	}

	return 0;
}