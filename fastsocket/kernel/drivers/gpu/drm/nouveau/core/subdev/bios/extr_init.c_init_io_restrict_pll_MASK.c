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
typedef  int u32 ;
typedef  int u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int,int) ; 
 int FUNC2 (struct nvbios_init*,int,int) ; 
 void* FUNC3 (struct nouveau_bios*,scalar_t__) ; 
 int FUNC4 (struct nouveau_bios*,scalar_t__) ; 
 int FUNC5 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u16 port = FUNC4(bios, init->offset + 1);
	u8 index = FUNC3(bios, init->offset + 3);
	u8  mask = FUNC3(bios, init->offset + 4);
	u8 shift = FUNC3(bios, init->offset + 5);
	s8  iofc = FUNC3(bios, init->offset + 6);
	u8 count = FUNC3(bios, init->offset + 7);
	u32  reg = FUNC5(bios, init->offset + 8);
	u8 conf, i;

	FUNC6("IO_RESTRICT_PLL\tR[0x%06x] =PLL= "
	      "((0x%04x[0x%02x] & 0x%02x) >> 0x%02x) IOFCOND 0x%02x [{\n",
	      reg, port, index, mask, shift, iofc);
	init->offset += 12;

	conf = (FUNC2(init, port, index) & mask) >> shift;
	for (i = 0; i < count; i++) {
		u32 freq = FUNC4(bios, init->offset) * 10;

		if (i == conf) {
			FUNC6("\t%dkHz *\n", freq);
			if (iofc > 0 && FUNC0(init, iofc))
				freq *= 2;
			FUNC1(init, reg, freq);
		} else {
			FUNC6("\t%dkHz\n", freq);
		}

		init->offset += 2;
	}
	FUNC6("}]\n");
}