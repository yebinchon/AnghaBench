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
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,int) ; 
 int FUNC1 (struct nvbios_init*,int) ; 
 int FUNC2 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u8  mask = FUNC2(bios, init->offset + 1);
	u8 value = FUNC2(bios, init->offset + 2);

	FUNC3("RAM_CONDITION\t"
	      "(R[0x100000] & 0x%02x) == 0x%02x\n", mask, value);
	init->offset += 3;

	if ((FUNC1(init, 0x100000) & mask) != value)
		FUNC0(init, false);
}