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
typedef  int u32 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,int) ; 
 int FUNC1 (struct nvbios_init*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvbios_init*,int,int) ; 
 int FUNC3 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u32   reg = FUNC3(bios, init->offset + 1);
	u32 data1 = FUNC3(bios, init->offset + 5);
	u32 data2 = FUNC3(bios, init->offset + 9);
	u32 savepci19;

	FUNC4("RESET\tR[0x%08x] = 0x%08x, 0x%08x", reg, data1, data2);
	init->offset += 13;
	FUNC0(init, true);

	savepci19 = FUNC1(init, 0x00184c, 0x00000f00, 0x00000000);
	FUNC2(init, reg, data1);
	FUNC5(10);
	FUNC2(init, reg, data2);
	FUNC2(init, 0x00184c, savepci19);
	FUNC1(init, 0x001850, 0x00000001, 0x00000000);

	FUNC0(init, false);
}