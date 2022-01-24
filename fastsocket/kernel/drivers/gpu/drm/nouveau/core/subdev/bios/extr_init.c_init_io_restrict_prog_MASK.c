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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvbios_init*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u16 port = FUNC3(bios, init->offset + 1);
	u8 index = FUNC2(bios, init->offset + 3);
	u8  mask = FUNC2(bios, init->offset + 4);
	u8 shift = FUNC2(bios, init->offset + 5);
	u8 count = FUNC2(bios, init->offset + 6);
	u32  reg = FUNC4(bios, init->offset + 7);
	u8 conf, i;

	FUNC5("IO_RESTRICT_PROG\tR[0x%06x] = "
	      "((0x%04x[0x%02x] & 0x%02x) >> %d) [{\n",
	      reg, port, index, mask, shift);
	init->offset += 11;

	conf = (FUNC0(init, port, index) & mask) >> shift;
	for (i = 0; i < count; i++) {
		u32 data = FUNC4(bios, init->offset);

		if (i == conf) {
			FUNC5("\t0x%08x *\n", data);
			FUNC1(init, reg, data);
		} else {
			FUNC5("\t0x%08x\n", data);
		}

		init->offset += 4;
	}
	FUNC5("}]\n");
}