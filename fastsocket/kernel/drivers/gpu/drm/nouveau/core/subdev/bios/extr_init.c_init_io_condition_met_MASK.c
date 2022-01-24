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
typedef  scalar_t__ u16 ;
struct nvbios_init {struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*) ; 
 int FUNC1 (struct nvbios_init*,scalar_t__,int) ; 
 int FUNC2 (struct nouveau_bios*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,scalar_t__,int,int,int) ; 

__attribute__((used)) static bool
FUNC5(struct nvbios_init *init, u8 cond)
{
	struct nouveau_bios *bios = init->bios;
	u16 table = FUNC0(init);
	if (table) {
		u16 port = FUNC3(bios, table + (cond * 5) + 0);
		u8 index = FUNC2(bios, table + (cond * 5) + 2);
		u8  mask = FUNC2(bios, table + (cond * 5) + 3);
		u8 value = FUNC2(bios, table + (cond * 5) + 4);
		FUNC4("\t[0x%02x] (0x%04x[0x%02x] & 0x%02x) == 0x%02x\n",
		      cond, port, index, mask, value);
		return (FUNC1(init, port, index) & mask) == value;
	}
	return false;
}