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
typedef  int /*<<< orphan*/  u64 ;
struct mlx4_mac_table {int /*<<< orphan*/  mutex; int /*<<< orphan*/  total; scalar_t__* entries; scalar_t__* refs; } ;
struct mlx4_port_info {struct mlx4_mac_table mac_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_port_info* port; } ;

/* Variables and functions */
 int FUNC0 (struct mlx4_dev*,struct mlx4_mac_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,char*,int) ; 
 TYPE_1__* FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct mlx4_dev*,struct mlx4_mac_table*,int) ; 

void FUNC7(struct mlx4_dev *dev, u8 port, u64 mac)
{
	struct mlx4_port_info *info = &FUNC2(dev)->port[port];
	struct mlx4_mac_table *table = &info->mac_table;
	int index;

	FUNC4(&table->mutex);
	index = FUNC0(dev, table, mac);

	if (FUNC6(dev, table, index))
		goto out;
	if (--table->refs[index]) {
		FUNC1(dev, "Have more references for index %d,"
			 "no need to modify mac table\n", index);
		goto out;
	}

	table->entries[index] = 0;
	FUNC3(dev, port, table->entries);
	--table->total;
out:
	FUNC5(&table->mutex);
}