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
 int FUNC0 (struct nvbios_init*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int,int) ; 
 int FUNC2 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 

__attribute__((used)) static void
FUNC4(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u32 addr = FUNC2(bios, init->offset + 1);
	u32 mask = FUNC2(bios, init->offset + 5);
	u32  add = FUNC2(bios, init->offset + 9);
	u32 data;

	FUNC3("ZM_MASK_ADD\tR[0x%06x] &= 0x%08x += 0x%08x\n", addr, mask, add);
	init->offset += 13;

	data =  FUNC0(init, addr);
	data = (data & mask) | ((data + add) & ~mask);
	FUNC1(init, addr, data);
}