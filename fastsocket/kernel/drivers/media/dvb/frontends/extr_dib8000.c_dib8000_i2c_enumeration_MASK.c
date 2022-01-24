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
struct i2c_device {int addr; struct i2c_adapter* adap; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_device*,int,int) ; 
 scalar_t__ FUNC1 (struct i2c_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 

int FUNC3(struct i2c_adapter *host, int no_of_demods, u8 default_addr, u8 first_addr)
{
	int k = 0;
	u8 new_addr = 0;
	struct i2c_device client = {.adap = host };

	for (k = no_of_demods - 1; k >= 0; k--) {
		/* designated i2c address */
		new_addr = first_addr + (k << 1);

		client.addr = new_addr;
		FUNC0(&client, 1287, 0x0003);	/* sram lead in, rdy */
		if (FUNC1(&client) == 0) {
			FUNC0(&client, 1287, 0x0003);	/* sram lead in, rdy */
			client.addr = default_addr;
			if (FUNC1(&client) == 0) {
				FUNC2("#%d: not identified", k);
				return -EINVAL;
			}
		}

		/* start diversity to pull_down div_str - just for i2c-enumeration */
		FUNC0(&client, 1286, (1 << 10) | (4 << 6));

		/* set new i2c address and force divstart */
		FUNC0(&client, 1285, (new_addr << 2) | 0x2);
		client.addr = new_addr;
		FUNC1(&client);

		FUNC2("IC %d initialized (to i2c_address 0x%x)", k, new_addr);
	}

	for (k = 0; k < no_of_demods; k++) {
		new_addr = first_addr | (k << 1);
		client.addr = new_addr;

		// unforce divstr
		FUNC0(&client, 1285, new_addr << 2);

		/* deactivate div - it was just for i2c-enumeration */
		FUNC0(&client, 1286, 0);
	}

	return 0;
}