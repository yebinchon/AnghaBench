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
typedef  size_t u8 ;
typedef  int u64 ;
struct mlx4_mac_table {int /*<<< orphan*/  mutex; scalar_t__* entries; } ;
struct mlx4_port_info {int base_qpn; struct mlx4_mac_table mac_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_port_info* port; } ;

/* Variables and functions */
 int MLX4_MAC_VALID ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,char*,unsigned long long) ; 
 TYPE_1__* FUNC2 (struct mlx4_dev*) ; 
 int FUNC3 (struct mlx4_dev*,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct mlx4_dev*,struct mlx4_mac_table*,int) ; 

int FUNC8(struct mlx4_dev *dev, u8 port, int qpn, u64 new_mac)
{
	struct mlx4_port_info *info = &FUNC2(dev)->port[port];
	struct mlx4_mac_table *table = &info->mac_table;
	int index = qpn - info->base_qpn;
	int err = 0;

	/* CX1 doesn't support multi-functions */
	FUNC4(&table->mutex);

	err = FUNC7(dev, table, index);
	if (err)
		goto out;

	table->entries[index] = FUNC0(new_mac | MLX4_MAC_VALID);

	err = FUNC3(dev, port, table->entries);
	if (FUNC6(err)) {
		FUNC1(dev, "Failed adding MAC: 0x%llx\n",
			 (unsigned long long) new_mac);
		table->entries[index] = 0;
	}
out:
	FUNC5(&table->mutex);
	return err;
}