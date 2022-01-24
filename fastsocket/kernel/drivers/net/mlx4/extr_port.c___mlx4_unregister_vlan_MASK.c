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
typedef  size_t u8 ;
struct mlx4_vlan_table {int /*<<< orphan*/  mutex; int /*<<< orphan*/  total; scalar_t__* entries; scalar_t__* refs; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {struct mlx4_vlan_table vlan_table; } ;

/* Variables and functions */
 int MLX4_VLAN_REGULAR ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,char*,int) ; 
 TYPE_2__* FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct mlx4_dev *dev, u8 port, int index)
{
	struct mlx4_vlan_table *table = &FUNC1(dev)->port[port].vlan_table;

	if (index < MLX4_VLAN_REGULAR) {
		FUNC3(dev, "Trying to free special vlan index %d\n", index);
		return;
	}

	FUNC4(&table->mutex);
	if (!table->refs[index]) {
		FUNC3(dev, "No vlan entry for index %d\n", index);
		goto out;
	}
	if (--table->refs[index]) {
		FUNC0(dev, "Have more references for index %d,"
			 "no need to modify vlan table\n", index);
		goto out;
	}
	table->entries[index] = 0;
	FUNC2(dev, port, table->entries);
	--table->total;
out:
	FUNC5(&table->mutex);
}