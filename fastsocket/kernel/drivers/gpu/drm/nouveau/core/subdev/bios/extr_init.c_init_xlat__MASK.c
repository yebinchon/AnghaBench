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
typedef  int u16 ;
struct nvbios_init {struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvbios_init*) ; 
 int FUNC1 (struct nouveau_bios*,int) ; 
 int FUNC2 (struct nouveau_bios*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static u8
FUNC4(struct nvbios_init *init, u8 index, u8 offset)
{
	struct nouveau_bios *bios = init->bios;
	u16 table = FUNC0(init);
	if (table) {
		u16 data = FUNC2(bios, table + (index * 2));
		if (data)
			return FUNC1(bios, data + offset);
		FUNC3("xlat table pointer %d invalid\n", index);
	}
	return 0x00;
}