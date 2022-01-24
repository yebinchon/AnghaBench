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
struct mlx4_mac_table {int* refs; scalar_t__ total; scalar_t__ max; int /*<<< orphan*/  mutex; scalar_t__* entries; } ;
struct mlx4_port_info {struct mlx4_mac_table mac_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_port_info* port; } ;

/* Variables and functions */
 int ENOSPC ; 
 int MLX4_MAC_MASK ; 
 int MLX4_MAC_VALID ; 
 int MLX4_MAX_MAC_NUM ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,char*,unsigned long long) ; 
 TYPE_1__* FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct mlx4_dev *dev, u8 port, u64 mac)
{
	struct mlx4_port_info *info = &FUNC4(dev)->port[port];
	struct mlx4_mac_table *table = &info->mac_table;
	int i, err = 0;
	int free = -1;

	FUNC2(dev, "Registering MAC: 0x%llx for port %d\n",
		 (unsigned long long) mac, port);

	FUNC6(&table->mutex);
	for (i = 0; i < MLX4_MAX_MAC_NUM; i++) {
		if (free < 0 && !table->entries[i]) {
			free = i;
			continue;
		}

		if (mac == (MLX4_MAC_MASK & FUNC0(table->entries[i]))) {
			/* MAC already registered, increment ref count */
			err = i;
			++table->refs[i];
			goto out;
		}
	}

	FUNC2(dev, "Free MAC index is %d\n", free);

	if (table->total == table->max) {
		/* No free mac entries */
		err = -ENOSPC;
		goto out;
	}

	/* Register new MAC */
	table->entries[free] = FUNC1(mac | MLX4_MAC_VALID);

	err = FUNC5(dev, port, table->entries);
	if (FUNC8(err)) {
		FUNC3(dev, "Failed adding MAC: 0x%llx\n",
			 (unsigned long long) mac);
		table->entries[free] = 0;
		goto out;
	}
	table->refs[free] = 1;
	err = free;
	++table->total;
out:
	FUNC7(&table->mutex);
	return err;
}