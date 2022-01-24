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
typedef  int /*<<< orphan*/  u64 ;
struct mlx4_mac_entry {size_t* mac; int /*<<< orphan*/  hlist; int /*<<< orphan*/  reg_id; } ;
struct mlx4_en_priv {int base_qpn; int /*<<< orphan*/  port; TYPE_2__* dev; int /*<<< orphan*/ * mac_hash; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {struct mlx4_dev* dev; } ;
struct TYPE_3__ {scalar_t__ steering_mode; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {int dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t MLX4_EN_MAC_HASH_IDX ; 
 scalar_t__ MLX4_STEERING_MODE_A0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlx4_mac_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct mlx4_en_priv*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_en_priv*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,int,int) ; 
 int FUNC10 (struct mlx4_dev*,int,int,int*) ; 
 int FUNC11 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct mlx4_en_priv *priv)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_dev *dev = mdev->dev;
	struct mlx4_mac_entry *entry;
	int index = 0;
	int err = 0;
	u64 reg_id;
	int *qpn = &priv->base_qpn;
	u64 mac = FUNC5(priv->dev->dev_addr);

	FUNC0(DRV, priv, "Registering MAC: %pM for adding\n",
	       priv->dev->dev_addr);
	index = FUNC11(dev, priv->port, mac);
	if (index < 0) {
		err = index;
		FUNC1(priv, "Failed adding MAC: %pM\n",
		       priv->dev->dev_addr);
		return err;
	}

	if (dev->caps.steering_mode == MLX4_STEERING_MODE_A0) {
		int base_qpn = FUNC8(dev, priv->port);
		*qpn = base_qpn + index;
		return 0;
	}

	err = FUNC10(dev, 1, 1, qpn);
	FUNC0(DRV, priv, "Reserved qp %d\n", *qpn);
	if (err) {
		FUNC1(priv, "Failed to reserve qp for mac registration\n");
		goto qp_err;
	}

	err = FUNC6(priv, priv->dev->dev_addr, qpn, &reg_id);
	if (err)
		goto steer_err;

	entry = FUNC3(sizeof(*entry), GFP_KERNEL);
	if (!entry) {
		err = -ENOMEM;
		goto alloc_err;
	}
	FUNC4(entry->mac, priv->dev->dev_addr, sizeof(entry->mac));
	entry->reg_id = reg_id;

	FUNC2(&entry->hlist,
			   &priv->mac_hash[entry->mac[MLX4_EN_MAC_HASH_IDX]]);

	return 0;

alloc_err:
	FUNC7(priv, priv->dev->dev_addr, *qpn, reg_id);

steer_err:
	FUNC9(dev, *qpn, 1);

qp_err:
	FUNC12(dev, priv->port, mac);
	return err;
}