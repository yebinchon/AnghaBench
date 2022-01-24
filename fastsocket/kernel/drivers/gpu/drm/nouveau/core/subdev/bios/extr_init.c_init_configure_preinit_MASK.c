#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvbios_init {int offset; struct nouveau_bios* bios; } ;
struct TYPE_2__ {int major; } ;
struct nouveau_bios {TYPE_1__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int) ; 
 int FUNC2 (struct nvbios_init*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvbios_init*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u32 strap;

	FUNC4("CONFIGURE_PREINIT\n");
	init->offset += 1;

	if (bios->version.major > 2) {
		FUNC0(init);
		return;
	}
	FUNC1(init, true);

	strap = FUNC2(init, 0x101000);
	strap = ((strap << 2) & 0xf0) | ((strap & 0x40) >> 6);
	FUNC3(init, 0x03d4, 0x3c, strap);

	FUNC1(init, false);
}