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
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvbios_init*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static void
FUNC5(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u32 addr = FUNC3(bios, init->offset + 1);
	u8 count = FUNC2(bios, init->offset + 5);

	FUNC4("AUXCH\tAUX[0x%08x] 0x%02x\n", addr, count);
	init->offset += 6;

	while (count--) {
		u8 mask = FUNC2(bios, init->offset + 0);
		u8 data = FUNC2(bios, init->offset + 1);
		FUNC4("\tAUX[0x%08x] &= 0x%02x |= 0x%02x\n", addr, mask, data);
		mask = FUNC0(init, addr) & mask;
		FUNC1(init, addr, mask | data);
		init->offset += 2;
	}
}