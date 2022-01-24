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
struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {struct net_device_stats ret_stats; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device_stats*,int /*<<< orphan*/ *,int) ; 
 struct mlx4_en_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net_device_stats *FUNC4(struct net_device *dev)
{
	struct mlx4_en_priv *priv = FUNC1(dev);

	FUNC2(&priv->stats_lock);
	FUNC0(&priv->ret_stats, &priv->stats, sizeof(priv->stats));
	FUNC3(&priv->stats_lock);

	return &priv->ret_stats;
}