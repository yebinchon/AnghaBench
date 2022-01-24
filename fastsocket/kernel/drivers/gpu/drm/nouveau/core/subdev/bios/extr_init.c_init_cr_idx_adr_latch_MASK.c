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
typedef  int /*<<< orphan*/  u8 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u8 addr0 = FUNC2(bios, init->offset + 1);
	u8 addr1 = FUNC2(bios, init->offset + 2);
	u8  base = FUNC2(bios, init->offset + 3);
	u8 count = FUNC2(bios, init->offset + 4);
	u8 save0;

	FUNC3("CR_INDEX_ADDR C[%02x] C[%02x]\n", addr0, addr1);
	init->offset += 5;

	save0 = FUNC0(init, 0x03d4, addr0);
	while (count--) {
		u8 data = FUNC2(bios, init->offset);

		FUNC3("\t\t[0x%02x] = 0x%02x\n", base, data);
		init->offset += 1;

		FUNC1(init, 0x03d4, addr0, base++);
		FUNC1(init, 0x03d4, addr1, data);
	}
	FUNC1(init, 0x03d4, addr0, save0);
}