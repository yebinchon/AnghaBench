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
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,int,int,int,int) ; 
 int FUNC1 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u8 index = FUNC1(bios, init->offset + 1);
	u8  addr = FUNC1(bios, init->offset + 2) >> 1;
	u8 count = FUNC1(bios, init->offset + 3);

	FUNC2("ZM_I2C_BYTE\tI2C[0x%02x][0x%02x]\n", index, addr);
	init->offset += 4;

	while (count--) {
		u8  reg = FUNC1(bios, init->offset + 0);
		u8 data = FUNC1(bios, init->offset + 1);

		FUNC2("\t[0x%02x] = 0x%02x\n", reg, data);
		init->offset += 2;

		FUNC0(init, index, addr, reg, data);
	}

}