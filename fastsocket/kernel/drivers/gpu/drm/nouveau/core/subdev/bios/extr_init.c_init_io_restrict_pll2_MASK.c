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
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvbios_init*,int /*<<< orphan*/ ,int) ; 
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
	u8  conf, i;

	FUNC5("IO_RESTRICT_PLL2\t"
	      "R[0x%06x] =PLL= ((0x%04x[0x%02x] & 0x%02x) >> 0x%02x) [{\n",
	      reg, port, index, mask, shift);
	init->offset += 11;

	conf = (FUNC1(init, port, index) & mask) >> shift;
	for (i = 0; i < count; i++) {
		u32 freq = FUNC4(bios, init->offset);
		if (i == conf) {
			FUNC5("\t%dkHz *\n", freq);
			FUNC0(init, reg, freq);
		} else {
			FUNC5("\t%dkHz\n", freq);
		}
		init->offset += 4;
	}
	FUNC5("}]\n");
}