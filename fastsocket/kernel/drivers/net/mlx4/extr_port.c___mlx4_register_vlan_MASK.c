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
typedef  int u16 ;
struct mlx4_vlan_table {scalar_t__ total; scalar_t__ max; int* refs; int /*<<< orphan*/  mutex; scalar_t__* entries; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {struct mlx4_vlan_table vlan_table; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int MLX4_MAX_VLAN_NUM ; 
 int MLX4_VLAN_MASK ; 
 int MLX4_VLAN_REGULAR ; 
 int MLX4_VLAN_VALID ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_2__* FUNC2 (struct mlx4_dev*) ; 
 int FUNC3 (struct mlx4_dev*,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct mlx4_dev *dev, u8 port, u16 vlan,
				int *index)
{
	struct mlx4_vlan_table *table = &FUNC2(dev)->port[port].vlan_table;
	int i, err = 0;
	int free = -1;

	FUNC5(&table->mutex);

	if (table->total == table->max) {
		/* No free vlan entries */
		err = -ENOSPC;
		goto out;
	}

	for (i = MLX4_VLAN_REGULAR; i < MLX4_MAX_VLAN_NUM; i++) {
		if (free < 0 && (table->refs[i] == 0)) {
			free = i;
			continue;
		}

		if (table->refs[i] &&
		    (vlan == (MLX4_VLAN_MASK &
			      FUNC0(table->entries[i])))) {
			/* Vlan already registered, increase references count */
			*index = i;
			++table->refs[i];
			goto out;
		}
	}

	if (free < 0) {
		err = -ENOMEM;
		goto out;
	}

	/* Register new VLAN */
	table->refs[free] = 1;
	table->entries[free] = FUNC1(vlan | MLX4_VLAN_VALID);

	err = FUNC3(dev, port, table->entries);
	if (FUNC7(err)) {
		FUNC4(dev, "Failed adding vlan: %u\n", vlan);
		table->refs[free] = 0;
		table->entries[free] = 0;
		goto out;
	}

	*index = free;
	++table->total;
out:
	FUNC6(&table->mutex);
	return err;
}