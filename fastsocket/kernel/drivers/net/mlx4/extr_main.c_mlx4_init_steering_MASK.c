#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx4_steer {int dummy; } ;
struct mlx4_priv {TYPE_2__* steer; } ;
struct TYPE_3__ {int num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {int /*<<< orphan*/ * steer_entries; int /*<<< orphan*/ * promisc_qps; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MLX4_NUM_STEERS ; 
 TYPE_2__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC2 (struct mlx4_dev*) ; 

__attribute__((used)) static int FUNC3(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC2(dev);
	int num_entries = dev->caps.num_ports;
	int i, j;

	priv->steer = FUNC1(sizeof(struct mlx4_steer) * num_entries, GFP_KERNEL);
	if (!priv->steer)
		return -ENOMEM;

	for (i = 0; i < num_entries; i++)
		for (j = 0; j < MLX4_NUM_STEERS; j++) {
			FUNC0(&priv->steer[i].promisc_qps[j]);
			FUNC0(&priv->steer[i].steer_entries[j]);
		}
	return 0;
}