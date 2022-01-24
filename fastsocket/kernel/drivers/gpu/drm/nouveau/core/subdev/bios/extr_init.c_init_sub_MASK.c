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
typedef  void* u16 ;
struct nvbios_init {void* offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct nvbios_init*) ; 
 void* FUNC2 (struct nouveau_bios*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bios*,void*) ; 
 scalar_t__ FUNC4 (struct nvbios_init*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u8 index = FUNC3(bios, init->offset + 1);
	u16 addr, save;

	FUNC5("SUB\t0x%02x\n", index);

	addr = FUNC2(bios, index);
	if (addr && FUNC1(init)) {
		save = init->offset;
		init->offset = addr;
		if (FUNC4(init)) {
			FUNC0("error parsing sub-table\n");
			return;
		}
		init->offset = save;
	}

	init->offset += 2;
}