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
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_i2c_port {int /*<<< orphan*/  adapter; } ;
struct nouveau_bios {int dummy; } ;
struct i2c_msg {int addr; int len; int* buf; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_M_RD ; 
 int FUNC0 (int /*<<< orphan*/ *,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int) ; 
 struct nouveau_i2c_port* FUNC2 (struct nvbios_init*,int) ; 
 int FUNC3 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int,int,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u8 index = FUNC3(bios, init->offset + 1);
	u8  addr = FUNC3(bios, init->offset + 2) >> 1;
	u8 reglo = FUNC3(bios, init->offset + 3);
	u8 reghi = FUNC3(bios, init->offset + 4);
	u8  mask = FUNC3(bios, init->offset + 5);
	u8  data = FUNC3(bios, init->offset + 6);
	struct nouveau_i2c_port *port;

	FUNC4("I2C_LONG_IF\t"
	      "I2C[0x%02x][0x%02x][0x%02x%02x] & 0x%02x == 0x%02x\n",
	      index, addr, reglo, reghi, mask, data);
	init->offset += 7;

	port = FUNC2(init, index);
	if (port) {
		u8 i[2] = { reghi, reglo };
		u8 o[1] = {};
		struct i2c_msg msg[] = {
			{ .addr = addr, .flags = 0, .len = 2, .buf = i },
			{ .addr = addr, .flags = I2C_M_RD, .len = 1, .buf = o }
		};
		int ret;

		ret = FUNC0(&port->adapter, msg, 2);
		if (ret == 2 && ((o[0] & mask) == data))
			return;
	}

	FUNC1(init, false);
}