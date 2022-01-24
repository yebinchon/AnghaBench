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
typedef  scalar_t__ u32 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC4(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u8  tmds = FUNC2(bios, init->offset + 1);
	u8 count = FUNC2(bios, init->offset + 2);
	u32  reg = FUNC0(init, tmds);

	FUNC3("TMDS_ZM_GROUP\tT[0x%02x]\n", tmds);
	init->offset += 3;

	while (count--) {
		u8 addr = FUNC2(bios, init->offset + 0);
		u8 data = FUNC2(bios, init->offset + 1);

		FUNC3("\t[0x%02x] = 0x%02x\n", addr, data);
		init->offset += 2;

		FUNC1(init, reg + 4, data);
		FUNC1(init, reg + 0, addr);
	}
}